@frozen public
struct Minutes:Hashable, Sendable
{
    public
    let count:Int64

    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Minutes
{
    @inlinable public
    static func minutes(_ minutes:Int64) -> Self { .init(count: minutes) }
}
extension Minutes:QuantizedDuration
{
    @inlinable public
    static var unit:String { "m" }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds / 60)
    }
}
extension Minutes:CustomStringConvertible
{
}
