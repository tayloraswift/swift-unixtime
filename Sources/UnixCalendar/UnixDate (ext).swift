import UnixTime

extension UnixDate
{
    /// TODO: we ought to be able to perform the date arithmetic in the `UnixDate` type itself,
    /// without calling into the operating system.
    @inlinable public
    init?(utc date:Timestamp.Date)
    {
        guard
        let attosecond:UnixAttosecond = .init(utc: .init(date: date))
        else
        {
            return nil
        }

        self.init(truncating: attosecond)
    }

    /// Returns the current UTC date by calling into the operating system.
    @inlinable public
    static func today() -> Self { .init(truncating: UnixAttosecond.now()) }
}
