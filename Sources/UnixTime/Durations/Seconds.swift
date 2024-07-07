@frozen public
struct Seconds:Hashable, Sendable
{
    public
    let count:Int64

    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Seconds
{
    @inlinable public
    static func seconds(_ seconds:Int64) -> Self { .init(count: seconds) }

    @inlinable public
    init(_ minutes:Minutes) { self.init(count: minutes.count * 60) }
    @inlinable public
    init(_ hours:Hours) { self.init(count: hours.count * 3600) }
    @inlinable public
    init(_ days:Days) { self.init(count: days.count * 86_400) }
}
extension Seconds:QuantizedDuration
{
    @inlinable public static
    var unit:DurationFormat.Unit { .seconds }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds)
    }
}
extension Seconds:CustomStringConvertible
{
}
