/// A low-precision instant in time, measured in milliseconds since the Unix epoch.
///
/// Low-precision time is mostly used with persisted data structures and algorithms. It excels
/// at logging and scheduling but it usually does not have sufficient precision to represent
/// things such as network latencies or function execution times. It uses ``Milliseconds`` as
/// its stride type.
///
/// It is worth noting that the stride durations are physically **non-contiguous**, as Unix time
/// skips over leap seconds.
///
///
/// ## Why milliseconds?
///
/// Second-precision time is not always granular enough for logging, while microsecond-precision
/// time limits the range of representable stride durations. Millisecond-precision time is a
/// good compromise and also round-trips through BSON.
@frozen public
struct UnixMillisecond:Equatable, Hashable, Sendable
{
    /// The number of non-leap seconds that have elapsed since 00:00:00 UTC on January 1, 1970.
    public
    let index:Int64

    @inlinable public
    init(index:Int64)
    {
        self.index = index
    }
}
extension UnixMillisecond
{
    /// Returns the millisecond interval containing the given attosecond-precision instant.
    @inlinable public
    init(truncating attosecond:UnixAttosecond)
    {
        self.init(
            index: attosecond.second * 1_000 + attosecond.attoseconds / 1_000_000_000_000_000)
    }

    /// Returns the instant corresponding to 00:00:00 UTC on the given date.
    @inlinable public
    init(_ date:UnixDate)
    {
        self.init(index: date.index * 86_400_000)
    }
}
extension UnixMillisecond:Comparable
{
    /// Compares *a* before *b* if *a*’s ``index`` is less than *b*’s ``index``.
    @inlinable public static
    func < (a:Self, b:Self) -> Bool { a.index < b.index }
}
extension UnixMillisecond:UnixInterval
{
    public
    typealias Duration = Milliseconds
}
