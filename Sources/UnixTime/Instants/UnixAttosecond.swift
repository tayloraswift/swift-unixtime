/// A high-precision instant in time, measured in seconds and attoseconds since the Unix epoch.
///
/// High-precision time is mostly used with in-memory data structures and algorithms; it is not
/// persistence-friendly and the less-significant bits have little meaning in that context. It
/// uses a native ``Swift/Duration`` as its stride type.
///
/// It is worth noting that the stride durations are physically **non-contiguous**, as Unix time
/// skips over leap seconds.
///
///
/// ## Why attoseconds?
///
/// Attoseconds are the native unit of ``Swift/Duration``, which allows for exact arithmetic
/// while retaining interoperability with standard library types. Attoseconds also enjoy an
/// optimal memory layout compared to similar high-precision time intervals.
@frozen public
struct UnixAttosecond:Equatable, Hashable, Sendable
{
    public
    var second:Int64
    public
    let attoseconds:Int64

    @inlinable
    init(second:Int64, attoseconds:Int64)
    {
        self.second = second
        self.attoseconds = attoseconds
    }
}
extension UnixAttosecond
{
    /// Returns the instant corresponding to the first attosecond in the given millisecond
    /// interval.
    @inlinable public
    init(_ millisecond:UnixMillisecond)
    {
        let (second, milliseconds):(Int64, Int64) = millisecond.index.quotientAndRemainder(
            dividingBy: 1000)

        self.init(second: second, attoseconds: milliseconds * 1_000_000_000_000_000)
    }

    /// Returns the instant corresponding to the first attosecond in 00:00:00 UTC on the given
    /// date.
    @inlinable public
    init(_ date:UnixDate)
    {
        self.init(second: date.index * 86_400, attoseconds: 0)
    }

    @inlinable public
    static func second(_ second:Int64) -> Self { .init(second: second, attoseconds: 0) }

    /// Returns an instant with the given ``second`` and ``attoseconds`` components. The
    /// ``attoseconds`` component must be greater than or equal to 0 and less than
    /// 1,000,000,000,000,000,000.
    @inlinable public
    static func second(_ second:Int64, attoseconds:Int64) -> Self
    {
        precondition(0 ..< 1_000_000_000_000_000_000 ~= attoseconds,
            "Attoseconds must be in the range 0 ..< 1_000_000_000_000_000_000")

        return .init(second: second, attoseconds: attoseconds)
    }
}
extension UnixAttosecond:Comparable
{
    @inlinable public
    static func < (a:Self, b:Self) -> Bool
    {
        (a.second, a.attoseconds) < (b.second, b.attoseconds)
    }
}
extension UnixAttosecond
{
    @inlinable
    func advanced(by components:(seconds:Int64, attoseconds:Int64)) -> Self
    {
        let second:Int64 = self.second + components.seconds
        let attoseconds:Int64 = self.attoseconds + components.attoseconds
        if  attoseconds < 0
        {
            return .init(second: second - 1,
                attoseconds: attoseconds + 1_000_000_000_000_000_000)
        }
        else if attoseconds < 1_000_000_000_000_000_000
        {
            return .init(second: second, attoseconds: attoseconds)
        }
        else
        {
            return .init(second: second + 1,
                attoseconds: attoseconds - 1_000_000_000_000_000_000)
        }
    }
}
extension UnixAttosecond:UnixInstant
{
    /// Returns the instant 00:00:00 UTC on January 1, 1970.
    @inlinable public
    static var zero:Self { .init(second: 0, attoseconds: 0) }

    @inlinable public
    func regressed(by duration:Duration) -> Self
    {
        self.advanced(by: (-duration.components.seconds, -duration.components.attoseconds))
    }

    @inlinable public
    func advanced(by duration:Duration) -> Self
    {
        self.advanced(by: duration.components)
    }

    @inlinable public
    func duration(to after:Self) -> Duration
    {
        let seconds:Int64 = after.second - self.second
        let attoseconds:Int64 = after.attoseconds - self.attoseconds
        //  This initializer will automatically normalize negative attoseconds.
        return .init(secondsComponent: seconds, attosecondsComponent: attoseconds)
    }
}
