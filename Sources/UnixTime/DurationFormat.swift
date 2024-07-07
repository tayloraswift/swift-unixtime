/// A representation of a formatted duration. This type is mostly used to create logarithmic age
/// strings like `1 day` or `2h ago`.
@frozen public
struct DurationFormat:Equatable, Sendable
{
    public
    var magnitude:UInt64
    /// This is packed below ``magnitude`` to improve memory layout.
    public
    var negative:Bool
    public
    var unit:Unit

    @inlinable public
    init(negative:Bool, magnitude:UInt64, unit:Unit)
    {
        self.magnitude = magnitude
        self.negative = negative
        self.unit = unit
    }
}
extension DurationFormat
{
    private
    init(negative:Bool, attoseconds:UInt64)
    {
        let magnitude:UInt64
        let unit:Unit

        if      attoseconds >= 2_000_000_000_000_000
        {
            magnitude = attoseconds / 2_000_000_000_000_000
            unit = .milliseconds
        }
        else if attoseconds >= 2_000_000_000_000
        {
            magnitude = attoseconds / 2_000_000_000_000
            unit = .microseconds
        }
        else if attoseconds >= 2_000_000_000
        {
            magnitude = attoseconds / 2_000_000_000
            unit = .nanoseconds
        }
        else if attoseconds >= 2_000_000
        {
            magnitude = attoseconds / 2_000_000
            unit = .picoseconds
        }
        else if attoseconds >= 2_000
        {
            magnitude = attoseconds / 2_000
            unit = .femtoseconds
        }
        else
        {
            magnitude = attoseconds
            unit = .attoseconds
        }

        self.init(negative: negative, magnitude: magnitude, unit: unit)
    }

    private
    init(negative:Bool, seconds:UInt64)
    {
        let magnitude:UInt64
        let unit:Unit

        if      seconds >= 26 * 604_800
        {
            magnitude = seconds / 604_800
            unit = .weeks
        }
        else if seconds >= 2 * 86_400
        {
            magnitude = seconds / 86_400
            unit = .days
        }
        else if seconds >= 2 * 3600
        {
            magnitude = seconds / 3600
            unit = .hours
        }
        else if seconds >= 2 * 60
        {
            magnitude = seconds / 60
            unit = .minutes
        }
        else
        {
            magnitude = seconds
            unit = .seconds
        }

        self.init(negative: negative, magnitude: magnitude, unit: unit)
    }
}
extension DurationFormat
{
    //  Note: ``Duration`` is `@frozen`, so this does not require `borrowing`.
    public
    init(_ duration:Duration)
    {
        let (seconds, attoseconds):(Int64, Int64) = duration.components

        if      seconds >= 2
        {
            self.init(negative: false, seconds: UInt64.init(seconds))
        }
        else if seconds <= -2
        {
            self.init(negative: true, seconds: UInt64.init(-seconds))
        }
        else
        {
            let attoseconds:Int64 = attoseconds + seconds * 1_000_000_000_000_000_000
            if  attoseconds < 0
            {
                self.init(negative: true, attoseconds: UInt64.init(-attoseconds))
            }
            else
            {
                self.init(negative: false, attoseconds: UInt64.init(attoseconds))
            }
        }
    }

    public
    init(_ nanoseconds:Nanoseconds) { self.init(Duration.init(nanoseconds)) }
    public
    init(_ microseconds:Microseconds) { self.init(Duration.init(microseconds)) }
    public
    init(_ milliseconds:Milliseconds) { self.init(Duration.init(milliseconds)) }

    public
    init(_ seconds:Seconds)
    {
        if      seconds.count < 0
        {
            self.init(negative: true, seconds: UInt64.init(-seconds.count))
        }
        else
        {
            self.init(negative: false, seconds: UInt64.init(seconds.count))
        }
    }

    public
    init(_ minutes:Minutes) { self.init(Seconds.init(minutes)) }
    public
    init(_ hours:Hours) { self.init(Seconds.init(hours)) }
    public
    init(_ days:Days) { self.init(Seconds.init(days)) }
}
extension DurationFormat
{
    @inlinable public
    var short:String
    {
        self.negative ? "-\(self.magnitude)\(self.unit)" : "\(self.magnitude)\(self.unit)"
    }
}
extension DurationFormat:CustomStringConvertible
{
    @inlinable public
    var description:String
    {
        switch (self.negative, self.magnitude)
        {
        case (false, 1):                "1 \(self.unit.singular)"
        case (true,  1):                "-1 \(self.unit.singular)"
        case (false, let magnitude):    "\(magnitude) \(self.unit.plural)"
        case (true,  let magnitude):    "-\(magnitude) \(self.unit.plural)"
        }
    }
}
