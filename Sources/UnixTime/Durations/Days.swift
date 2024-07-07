/// A duration containing an integral number of days.
@frozen public
struct Days:Hashable, Sendable
{
    /// The number of days in this duration.
    public
    let count:Int64

    /// Prefer the ``Days/days(_:)`` constructor when creating instances of this type.
    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Days
{
    /// Creates a new duration with the specified number of days.
    @inlinable public
    static func days(_ days:Int64) -> Self { .init(count: days) }
}
extension Days:QuantizedDuration
{
    @inlinable public
    static var unit:DurationFormat.Unit { .days }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds / 86_400)
    }
}
extension Days:CustomStringConvertible
{
}
