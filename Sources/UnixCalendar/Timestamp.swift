import ISO
import UnixTime

#if canImport(Glibc)

import struct Glibc.tm
import func Glibc.gmtime_r

#elseif canImport(Darwin)

import struct Darwin.tm
import func Darwin.gmtime_r

#else
#error("Platform doesn’t support 'gmtime_r'")
#endif


@frozen public
struct Timestamp:Equatable, Hashable, Sendable
{
    public
    let weekday:Weekday
    public
    let date:Date
    public
    let time:Time

    @inlinable public
    init(weekday:Weekday, date:Date, time:Time)
    {
        self.weekday = weekday
        self.date = date
        self.time = time
    }
}
extension Timestamp
{
    @inlinable public
    var components:Components { .init(date: self.date, time: self.time) }
}
extension Timestamp
{
    /// Formats this timestamp as an HTTP GMT date.
    @inlinable public
    var http:String
    {
        """
        \(self.weekday.short(.init(language: .en))), \
        \(self.date.day) \
        \(self.date.mon) \
        \(self.date.year) \
        \(self.time.hh):\(self.time.mm):\(self.time.ss) GMT
        """
    }
}
extension Timestamp
{
    init?(secondSinceEpoch:Int)
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

        guard withUnsafePointer(to: secondSinceEpoch, { gmtime_r($0, &segmented) }) != nil,
        let weekday:Timestamp.Weekday = .init(rawValue: Int.init(segmented.tm_wday)),
        let month:Timestamp.Month = .init(rawValue: segmented.tm_mon + 1)
        else
        {
            return nil
        }

        self.init(weekday: weekday,
            date: .init(year: .init(rawValue: segmented.tm_year + 1900),
                month: month,
                day: segmented.tm_mday),
            time: .init(hour: segmented.tm_hour,
                minute: segmented.tm_min,
                second: segmented.tm_sec))
    }
}
