/// A very low-precision instant in time, measured in days since the Unix epoch.
///
/// Like ``UnixMillisecond``, this type is mostly used with persistence, although it is not as
/// useful for logging. One common use-case for day-precision instants is database sharding and
/// statistical aggregation. It uses ``Days`` as its stride type.
@frozen public
struct UnixDate:Equatable, Hashable, Sendable
{
    /// The number of days (including leap days) that have elapsed since 00:00:00 UTC on
    /// January 1, 1970.
    public
    var index:Int64

    @inlinable public
    init(index:Int64)
    {
        self.index = index
    }
}
extension UnixDate
{
    /// Returns the date containing the given attosecond-precision instant.
    @inlinable public
    init(truncating attosecond:UnixAttosecond)
    {
        self.init(index: attosecond.second / 86_400)
    }

    /// Returns the date containing the given millisecond-precision instant.
    @inlinable public
    init(truncating millisecond:UnixMillisecond)
    {
        self.init(index: millisecond.index / 86_400_000)
    }
}
extension UnixDate:Comparable
{
    @inlinable public static
    func < (a:Self, b:Self) -> Bool { a.index < b.index }
}
extension UnixDate:UnixInterval
{
    public
    typealias Duration = Days
}
extension UnixDate:Strideable
{
    @inlinable public
    func advanced(by days:Int64) -> Self { self.advanced(by: .days(days)) }

    @inlinable public
    func distance(to day:Self) -> Int64 { self.duration(to: day).count }
}
