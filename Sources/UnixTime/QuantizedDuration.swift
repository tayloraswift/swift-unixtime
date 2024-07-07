public
protocol QuantizedDuration:RawRepresentable<Int64>, DurationProtocol, Hashable
{
    static var unit:DurationFormat.Unit { get }

    var count:Int64 { get }

    init(count:Int64)
    /// Rounds the given attosecond-resolution duration towards zero.
    init(truncating duration:Duration)
}
extension QuantizedDuration
{
    @inlinable public
    init(rawValue:Int64) { self.init(count: rawValue) }

    @inlinable public
    var rawValue:Int64 { self.count }
}
extension QuantizedDuration where Self:CustomStringConvertible
{
    @inlinable public
    var description:String { "\(self.count) \(Self.unit)" }
}
extension QuantizedDuration
{
    @inlinable public
    static func < (a:Self, b:Self) -> Bool { a.count < b.count }
}
extension QuantizedDuration
{
    @inlinable public
    static var zero:Self { .init(count: 0) }

    @inlinable public
    static var max:Self { .init(count: .max) }

    @inlinable public
    static prefix func - (self:Self) -> Self { .init(count: -self.count) }

    @inlinable public
    static func + (a:Self, b:Self) -> Self { .init(count: a.count + b.count) }

    @inlinable public
    static func - (a:Self, b:Self) -> Self { .init(count: a.count - b.count) }
}
extension QuantizedDuration
{
    @inlinable public
    static func / (a:Self, b:Int) -> Self { .init(count: a.count / RawValue.init(b)) }

    @inlinable public
    static func * (a:Self, b:Int) -> Self { .init(count: a.count * RawValue.init(b)) }

    @inlinable public
    static func / (a:Self, b:Self) -> Double { Double.init(a.count) / Double.init(b.count) }
}
