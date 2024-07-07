extension Duration
{
    @inlinable public
    init(_ days:Days) { self = .seconds(86_400 * days.count) }

    @inlinable public
    init(_ hours:Hours) { self = .seconds(3_600 * hours.count) }

    @inlinable public
    init(_ minutes:Minutes) { self = .seconds(60 * minutes.count) }

    @inlinable public
    init(_ seconds:Seconds) { self = .seconds(seconds.count) }

    @inlinable public
    init(_ milliseconds:Milliseconds) { self = .milliseconds(milliseconds.count) }

    @inlinable public
    init(_ microseconds:Microseconds) { self = .microseconds(microseconds.count) }

    @inlinable public
    init(_ nanoseconds:Nanoseconds) { self = .nanoseconds(nanoseconds.count) }
}
