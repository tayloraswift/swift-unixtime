public
protocol UnixInstant<Duration>:InstantProtocol
{
    /// Returns the interval beginning on 00:00:00 UTC on January 1, 1970.
    static var zero:Self { get }

    /// Rewinds the instant by the specified duration. This is a separate requirement because
    /// the ``Swift/Duration`` type witness does not currently support efficient negation.
    func regressed(by duration:Duration) -> Self
    /// Advances the instant by the specified duration.
    func advanced(by duration:Duration) -> Self
    /// Returns the duration between this instant and the specified instant. The duration is
    /// positive if `after` occurs after `self`.
    func duration(to after:Self) -> Duration
}
extension UnixInstant
{
    @inlinable public
    static func - (after:Self, before:Self) -> Duration
    {
        before.duration(to: after)
    }

    @inlinable public
    static func - (self:Self, duration:Duration) -> Self
    {
        self.regressed(by: duration)
    }

    @inlinable public
    static func + (self:Self, duration:Duration) -> Self
    {
        self.advanced(by: duration)
    }
}
extension UnixInstant
{
    @inlinable public
    static func -= (self:inout Self, duration:Duration) { self = self - duration }

    @inlinable public
    static func += (self:inout Self, duration:Duration) { self = self + duration }
}
