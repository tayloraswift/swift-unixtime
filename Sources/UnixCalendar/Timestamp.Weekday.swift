import ISO

extension Timestamp
{
    @frozen public
    enum Weekday:Int, Equatable, Hashable, Sendable
    {
        case sunday = 0
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
    }
}
extension Timestamp.Weekday
{
    @inlinable public
    func advanced(by stride:Int) -> Self
    {
        .init(rawValue: (self.rawValue + stride) % 7)!
    }
    /// Returns the number of days to the given weekday, modulo 7. The result is always in
    /// the range `0 ..< 7`.
    @inlinable public
    func distance(to that:Self) -> Int
    {
        let distance:Int = that.rawValue - self.rawValue
        return distance < 0 ? distance + 7 : distance
    }
}
extension Timestamp.Weekday
{
    /// Returns the three-letter abbreviation of the weekday in the given locale if supported,
    /// in English otherwise.
    @inlinable public
    func short(_ locale:ISO.Locale) -> String
    {
        switch locale.language
        {
        case .es:
            switch self
            {
            case .sunday:       "Dom"
            case .monday:       "Lun"
            case .tuesday:      "Mar"
            case .wednesday:    "Mié"
            case .thursday:     "Jue"
            case .friday:       "Vie"
            case .saturday:     "Sáb"
            }

        case .en, _:
            switch self
            {
            case .sunday:       "Sun"
            case .monday:       "Mon"
            case .tuesday:      "Tue"
            case .wednesday:    "Wed"
            case .thursday:     "Thu"
            case .friday:       "Fri"
            case .saturday:     "Sat"
            }
        }
    }

    /// Returns the full name of the weekday in the given locale if supported, in English
    /// otherwise. If `capitalized` is true, the first letter of the name is capitalized.
    /// Otherwise, the capitalization follows the locale’s conventions.
    @inlinable public
    func long(_ locale:ISO.Locale, capitalized:Bool = false) -> String
    {
        switch locale.language
        {
        case .es:
            if  capitalized
            {
                switch self
                {
                case .sunday:       "Domingo"
                case .monday:       "Lunes"
                case .tuesday:      "Martes"
                case .wednesday:    "Miércoles"
                case .thursday:     "Jueves"
                case .friday:       "Viernes"
                case .saturday:     "Sábado"
                }
            }
            else
            {
                switch self
                {
                case .sunday:       "domingo"
                case .monday:       "lunes"
                case .tuesday:      "martes"
                case .wednesday:    "miércoles"
                case .thursday:     "jueves"
                case .friday:       "viernes"
                case .saturday:     "sábado"
                }
            }

        case .en, _:
            switch self
            {
            case .sunday:       "Sunday"
            case .monday:       "Monday"
            case .tuesday:      "Tuesday"
            case .wednesday:    "Wednesday"
            case .thursday:     "Thursday"
            case .friday:       "Friday"
            case .saturday:     "Saturday"
            }
        }
    }
}
