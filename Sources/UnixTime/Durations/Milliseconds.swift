/// A duration containing an integral number of milliseconds.
///
/// As this type is intended to witness ``UnixMillisecond``’s ``InstantProtocol/Duration``
/// requirement, it does not necessarily have a physical meaning.
@frozen public
struct Milliseconds:Hashable, Sendable
{
    /// The number of milliseconds in this duration.
    public
    let count:Int64

    /// Prefer the ``Milliseconds/milliseconds(_:)`` constructor when creating instances of this
    /// type.
    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Milliseconds
{
    /// Creates a new duration with the specified number of milliseconds.
    @inlinable public
    static func milliseconds(_ milliseconds:Int64) -> Self { .init(count: milliseconds) }

    /// Creates a new duration by scaling the specified second-precision duration.
    @inlinable public
    init(_ seconds:Seconds) { self.init(count: seconds.count * 1_000) }

    /// Creates a new duration by scaling the specified minute-precision duration.
    @inlinable public
    init(_ minutes:Minutes) { self.init(count: minutes.count * 60_000) }

    /// Creates a new duration by scaling the specified hour-precision duration.
    @inlinable public
    init(_ hours:Hours) { self.init(count: hours.count * 3_600_000) }

    /// Creates a new duration by scaling the specified day-precision duration.
    @inlinable public
    init(_ days:Days) { self.init(count: days.count * 86_400_000) }
}
extension Milliseconds:QuantizedDuration
{
    @inlinable public static
    var unit:DurationFormat.Unit { .milliseconds }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds * 1_000 +
            duration.components.attoseconds / 1_000_000_000_000_000)
    }
}
extension Milliseconds:CustomStringConvertible
{
}
