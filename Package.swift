// swift-tools-version:5.10
import class Foundation.ProcessInfo
import CompilerPluginSupport
import PackageDescription

let package:Package = .init(
    name: "swift-unixtime",
    platforms: [.macOS(.v13), .iOS(.v16), .tvOS(.v16), .watchOS(.v9)],
    products: [
        .library(name: "CasesByIntegerEncodingMacro", targets: ["CasesByIntegerEncodingMacro"]),

        .library(name: "ISO", targets: ["ISO"]),
        .library(name: "UnixCalendar", targets: ["UnixCalendar"]),
        .library(name: "UnixTime", targets: ["UnixTime"])
    ],
    targets: [
        .target(name: "UnixCalendar",
            dependencies: [
                .target(name: "ISO"),
                .target(name: "UnixTime"),
            ]),

        .target(name: "UnixTime"),
    ])

switch ProcessInfo.processInfo.environment["SWIFTPM_ENABLE_MACROS"]?.lowercased()
{
case "1"?, "true"?:
    package.dependencies.append(.package(url: "https://github.com/apple/swift-syntax",
        "510.0.2" ..< "601.0.0-prerelease"))

    package.targets.append(.macro(name: "CasesByIntegerEncoding",
        dependencies: [
            .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
            .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
        ],
        path: "Macros/CasesByIntegerEncoding"))

    package.targets.append(.target(name: "CasesByIntegerEncodingMacro",
        dependencies: [
            .target(name: "CasesByIntegerEncoding"),
        ],
        path: "Macros/CasesByIntegerEncodingMacro",
        swiftSettings: [
            .define("ENABLE_MACROS"),
        ]))

    package.targets.append(.target(name: "ISO",
        dependencies: [
            .target(name: "CasesByIntegerEncodingMacro"),
        ],
        exclude: [
            "ISO.Country (gen).swift",
            "ISO.Macrolanguage (gen).swift",
        ]))

default:
    package.targets.append(.target(name: "CasesByIntegerEncodingMacro",
        path: "Macros/CasesByIntegerEncodingMacro"))

    package.targets.append(.target(name: "ISO",
        dependencies: [
            .target(name: "CasesByIntegerEncodingMacro"),
        ],
        exclude: [
            "ISO.Country.swift",
            "ISO.Macrolanguage.swift",
        ]))
}

for target:PackageDescription.Target in package.targets
{
    {
        var settings:[PackageDescription.SwiftSetting] = $0 ?? []

        settings.append(.enableUpcomingFeature("BareSlashRegexLiterals"))
        settings.append(.enableUpcomingFeature("ConciseMagicFile"))
        settings.append(.enableUpcomingFeature("DeprecateApplicationMain"))
        settings.append(.enableUpcomingFeature("ExistentialAny"))
        settings.append(.enableUpcomingFeature("GlobalConcurrency"))
        settings.append(.enableUpcomingFeature("IsolatedDefaultValues"))
        settings.append(.enableExperimentalFeature("StrictConcurrency"))

        $0 = settings
    } (&target.swiftSettings)
}
