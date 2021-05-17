// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "LaunchDarkly",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .watchOS(.v3),
        .tvOS(.v10)
    ],
    products: [
        .library(
            name: "LaunchDarkly",
            targets: ["LaunchDarkly"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AliSoftware/OHHTTPStubs.git", .upToNextMinor(from: "9.0.0"))
    ],
    targets: [
        .target(
            name: "LaunchDarkly",
            dependencies: ["LDSwiftEventSourceStatic"],
            path: "LaunchDarkly/LaunchDarkly",
            exclude: ["Support"])
    ],
    swiftLanguageVersions: [.v5])
