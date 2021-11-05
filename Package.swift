// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftClickHouse",
    platforms: [
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "SwiftClickHouse",
            type: nil,
            targets: ["SwiftClickHouse"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/SwiftyJSON", .upToNextMajor(from: "17.0.0")),
        .package(url: "https://github.com/IBM-Swift/BlueSocket", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .target(
            name: "SwiftClickHouse",
            dependencies: [
                "SwiftyJSON",
                .product(name: "Socket", package: "BlueSocket")
            ]
        )
    ]
)
