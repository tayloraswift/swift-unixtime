// swift-tools-version:5.10
import PackageDescription

let package:Package = .init(
    name: "Swift UnixTime",
    platforms: [.macOS(.v14), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "UnixCalendar", targets: ["UnixCalendar"]),
        .library(name: "UnixTime", targets: ["UnixTime"])
    ],
    targets: [
        .target(name: "UnixCalendar",
            dependencies: [
                .target(name: "UnixTime"),
            ]),

        .target(name: "UnixTime"),
    ])

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
