import UnixTime

extension UnixMillisecond
{
    /// Returns the current millisecond-precision time by calling into the operating system.
    public
    static func now() -> Self { .init(truncating: .now()) }
}
