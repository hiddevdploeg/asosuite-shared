// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ASOSuiteShared",
    platforms: [
        .macOS(.v11),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ASOSuiteShared",
            targets: ["ASOSuiteShared"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ASOSuiteShared",
            dependencies: []),
    ]
)
