@frozen public
struct Hours:Hashable, Sendable
{
    public
    let count:Int64

    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Hours
{
    @inlinable public
    static func hours(_ hours:Int64) -> Self { .init(count: hours) }

    @inlinable public
    init(_ days:Days) { self.init(count: days.count * 24) }
}
extension Hours:QuantizedDuration
{
    @inlinable public
    static var unit:DurationFormat.Unit { .hours }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds / 3600)
    }
}
extension Hours:CustomStringConvertible
{
}
