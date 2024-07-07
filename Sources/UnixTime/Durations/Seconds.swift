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
}
extension Seconds:QuantizedDuration
{
    @inlinable public static
    var unit:String { "s" }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds)
    }
}
extension Seconds:CustomStringConvertible
{
}
