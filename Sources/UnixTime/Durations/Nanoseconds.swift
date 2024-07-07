@frozen public
struct Nanoseconds:Hashable, Sendable
{
    public
    let count:Int64

    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Nanoseconds
{
    @inlinable public static
    func nanoseconds(_ nanoseconds:Int64) -> Self { .init(count: nanoseconds) }

    @inlinable public
    init(_ milliseconds:Milliseconds) { self.init(count: milliseconds.count * 1_000_000) }
    @inlinable public
    init(_ seconds:Seconds) { self.init(count: seconds.count * 1_000_000_000) }
    @inlinable public
    init(_ minutes:Minutes) { self.init(count: minutes.count * 60_000_000_000) }
}
extension Nanoseconds:QuantizedDuration
{
    @inlinable public
    static var unit:String { "ns" }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds * 1_000_000_000 +
            duration.components.attoseconds / 1_000_000_000)
    }
}
extension Nanoseconds:CustomStringConvertible
{
}
