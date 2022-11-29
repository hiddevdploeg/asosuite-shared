// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ASOSuiteShared",
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
