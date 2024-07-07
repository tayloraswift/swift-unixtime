import UnixTime

#if canImport(Glibc)
import struct Glibc.timespec
import struct Glibc.tm

import func Glibc.clock_gettime
import var Glibc.CLOCK_REALTIME
import func Glibc.gmtime_r
import func Glibc.timegm

#elseif canImport(Darwin)
import struct Darwin.timespec
import struct Darwin.tm

import func Darwin.clock_gettime
import var Darwin.CLOCK_REALTIME
import func Darwin.gmtime_r
import func Darwin.timegm
#else
#error("Platform doesn’t support 'clock_gettime'")
#endif

extension UnixAttosecond
{
    /// Returns the current maximum-precision time by calling into the operating system.
    public
    static func now() -> Self
    {
        withUnsafeTemporaryAllocation(of: timespec.self, capacity: 1)
        {
            guard clock_gettime(CLOCK_REALTIME, $0.baseAddress) == 0
            else
            {
                fatalError("system clock unavailable! (CLOCK_REALTIME)")
            }

            let time:timespec = $0[0]
            return .second(Int64.init(time.tv_sec),
                attoseconds: Int64.init(time.tv_nsec) * 1_000_000_000)
        }
    }
}
extension UnixAttosecond
{
    /// Y3K bug!
    @inlinable public
    init?(utc timestamp:Timestamp.Components,
        sanity checks:Timestamp.Sanity = .year(in: 1970 ... 2970))
    {
        switch checks
        {
        case .unchecked:    break
        case .year(in: let range):
            guard range.contains(timestamp.date.year)
            else
            {
                return nil
            }
        }

        var time:tm = .init(
            tm_sec:     timestamp.time.second,
            tm_min:     timestamp.time.minute,
            tm_hour:    timestamp.time.hour,
            tm_mday:    timestamp.date.day,
            tm_mon:     timestamp.date.month.rawValue - 1, // month in range 0 ... 11 !
            tm_year:    timestamp.date.year.rawValue - 1900,
            tm_wday:    -1,
            tm_yday:    -1,
            tm_isdst:   0,

            tm_gmtoff:  0,
            tm_zone:    nil)

        switch withUnsafeMutablePointer(to: &time, timegm)
        {
        case -1:            return nil
        case let second:    self = .second(Int64.init(second))
        }
    }

    public
    var timestamp:Timestamp?
    {
        var segmented:tm = .init(
            tm_sec:     -1,
            tm_min:     -1,
            tm_hour:    -1,
            tm_mday:    -1,
            tm_mon:     -1, // month in range 0 ... 11 !
            tm_year:    -1,
            tm_wday:    -1,
            tm_yday:    -1,
            tm_isdst:   0,

            tm_gmtoff:  0,
            tm_zone:    nil)

        let second:Int = .init(self.second)

        guard withUnsafePointer(to: second, { gmtime_r($0, &segmented) }) != nil,
        let weekday:Timestamp.Weekday = .init(rawValue: Int.init(segmented.tm_wday)),
        let month:Timestamp.Month = .init(rawValue: segmented.tm_mon + 1)
        else
        {
            return nil
        }

        return .init(weekday: weekday,
            date: .init(year: .init(rawValue: segmented.tm_year + 1900),
                month: month,
                day: segmented.tm_mday),
            time: .init(hour: segmented.tm_hour,
                minute: segmented.tm_min,
                second: segmented.tm_sec))
    }
}
