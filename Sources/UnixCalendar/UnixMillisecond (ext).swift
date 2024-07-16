import UnixTime

extension UnixMillisecond
{
    @inlinable public
    init?(utc timestamp:Timestamp.Components,
        sanity checks:Timestamp.Sanity = .year(in: 1970 ... 2970))
    {
        guard
        let attosecond:UnixAttosecond = .init(utc: timestamp, sanity: checks)
        else
        {
            return nil
        }

        self.init(truncating: attosecond)
    }

    /// Returns the current millisecond-precision time by calling into the operating system.
    public
    static func now() -> Self { .init(truncating: .now()) }

    public
    var timestamp:Timestamp? { .init(secondSinceEpoch: Int.init(self.index / 1_000)) }
}
