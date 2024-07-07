@frozen public
struct Microseconds:Hashable, Sendable
{
    public
    let count:Int64

    @inlinable public
    init(count:Int64)
    {
        self.count = count
    }
}
extension Microseconds
{
    @inlinable public static
    func microseconds(_ microseconds:Int64) -> Self { .init(count: microseconds) }

    @inlinable public
    init(_ milliseconds:Milliseconds) { self.init(count: milliseconds.count * 1_000) }
    @inlinable public
    init(_ seconds:Seconds) { self.init(count: seconds.count * 1_000_000) }
    @inlinable public
    init(_ minutes:Minutes) { self.init(count: minutes.count * 60_000_000) }
    @inlinable public
    init(_ hours:Hours) { self.init(count: hours.count * 3_600_000_000) }
    @inlinable public
    init(_ days:Days) { self.init(count: days.count * 86_400_000_000) }
}
extension Microseconds:QuantizedDuration
{
    @inlinable public
    static var unit:DurationFormat.Unit { .microseconds }

    @inlinable public
    init(truncating duration:Duration)
    {
        self.init(count: duration.components.seconds * 1_000_000 +
            duration.components.attoseconds / 1_000_000_000_000)
    }
}
extension Microseconds:CustomStringConvertible
{
}
