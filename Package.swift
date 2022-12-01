// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ASOSuiteShared",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
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
