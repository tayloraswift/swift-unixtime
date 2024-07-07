extension ISO
{
    @frozen public
    struct Locale:Equatable, Hashable, Sendable
    {
        public
        let language:Macrolanguage
        public
        let country:Country?

        @inlinable public
        init(language:Macrolanguage, country:Country? = nil)
        {
            self.language = language
            self.country = country
        }
    }
}
extension ISO.Locale
{
    @inlinable public
    var description:String
    {
        self.country.map { "\(self.language)-\($0)" } ?? "\(self.language)"
    }
}
