extension Duration
{
    @inlinable public
    init(_ days:Days) { self = .seconds(86_400 * days.count) }

    @inlinable public
    init(_ minutes:Minutes) { self = .seconds(60 * minutes.count) }

    @inlinable public
    init(_ seconds:Seconds) { self = .seconds(seconds.rawValue) }

    @inlinable public
    init(_ milliseconds:Milliseconds) { self = .milliseconds(milliseconds.rawValue) }

    @inlinable public
    init(_ nanoseconds:Nanoseconds) { self = .nanoseconds(nanoseconds.rawValue) }
}
