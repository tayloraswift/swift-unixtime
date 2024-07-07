@attached(extension, names: arbitrary, conformances: RawRepresentableByIntegerEncoding)
public
macro GenerateCasesByIntegerEncoding() = #externalMacro(
    module: "CasesByIntegerEncoding",
    type: "GenerateCasesByIntegerEncoding")
