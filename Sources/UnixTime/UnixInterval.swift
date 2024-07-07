public
protocol UnixInterval<Duration>:UnixInstant where Duration:QuantizedDuration
{
    var index:Int64 { get }
    init(index:Int64)
}
extension UnixInterval
{
    /// Returns the instant 00:00:00 UTC on January 1, 1970.
    @inlinable public
    static var zero:Self { .init(index: 0) }

    @inlinable public
    func regressed(by duration:Duration) -> Self
    {
        .init(index: self.index - duration.count)
    }
    @inlinable public
    func advanced(by duration:Duration) -> Self
    {
        .init(index: self.index + duration.count)
    }
    @inlinable public
    func duration(to after:Self) -> Duration
    {
        .init(count: after.index - self.index)
    }
}
