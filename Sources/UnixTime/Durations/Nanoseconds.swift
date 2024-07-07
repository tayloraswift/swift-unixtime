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
    init(_ microseconds:Microseconds) { self.init(count: microseconds.count * 1_000) }
    @inlinable public
    init(_ milliseconds:Milliseconds) { self.init(count: milliseconds.count * 1_000_000) }
    @inlinable public
    init(_ seconds:Seconds) { self.init(count: seconds.count * 1_000_000_000) }
    @inlinable public
    init(_ minutes:Minutes) { self.init(count: minutes.count * 60_000_000_000) }
    @inlinable public
    init(_ hours:Hours) { self.init(count: hours.count * 3_600_000_000_000) }
    @inlinable public
    init(_ days:Days) { self.init(count: days.count * 86_400_000_000_000) }
}
extension Nanoseconds:QuantizedDuration
{
    @inlinable public
    static var unit:DurationFormat.Unit { .nanoseconds }

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
