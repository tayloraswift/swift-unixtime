extension DurationFormat
{
    @frozen public
    enum Unit:Equatable, Hashable, Comparable, Sendable
    {
        case attoseconds
        case femtoseconds
        case picoseconds
        case nanoseconds
        case microseconds
        case milliseconds
        case seconds
        case minutes
        case hours
        case days
        case weeks
    }
}
extension DurationFormat.Unit
{
    /// Returns the singular form of the unit in English.
    @inlinable public
    var singular:String
    {
        switch self
        {
        case .weeks:        "week"
        case .days:         "day"
        case .hours:        "hour"
        case .minutes:      "minute"
        case .seconds:      "second"
        case .milliseconds: "millisecond"
        case .microseconds: "microsecond"
        case .nanoseconds:  "nanosecond"
        case .picoseconds:  "picosecond"
        case .femtoseconds: "femtosecond"
        case .attoseconds:  "attosecond"
        }
    }

    /// Returns the plural form of the unit in English.
    @inlinable public
    var plural:String
    {
        switch self
        {
        case .weeks:        "weeks"
        case .days:         "days"
        case .hours:        "hours"
        case .minutes:      "minutes"
        case .seconds:      "seconds"
        case .milliseconds: "milliseconds"
        case .microseconds: "microseconds"
        case .nanoseconds:  "nanoseconds"
        case .picoseconds:  "picoseconds"
        case .femtoseconds: "femtoseconds"
        case .attoseconds:  "attoseconds"
        }
    }

    /// Returns a 1–2 character string indicating the unit in English.
    @inlinable public
    var short:String
    {
        switch self
        {
        case .weeks:        "w"
        case .days:         "d"
        case .hours:        "h"
        case .minutes:      "m"
        case .seconds:      "s"
        case .milliseconds: "ms"
        case .microseconds: "µs"
        case .nanoseconds:  "ns"
        case .picoseconds:  "ps"
        case .femtoseconds: "fs"
        case .attoseconds:  "as"
        }
    }
}
extension DurationFormat.Unit:CustomStringConvertible
{
    @inlinable public
    var description:String { self.short }
}
