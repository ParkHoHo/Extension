// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [
        .iOS(.v13) // iOS 버전을 여기에 명시합니다. 필요에 따라 버전을 변경할 수 있습니다.
    ],
    products: [
        .library(
            name: "Extensions",
            targets: ["Extensions"]),
    ],
    targets: [
        .target(
            name: "Extensions",
            dependencies: []),
        .testTarget(
            name: "ExtensionsTests",
            dependencies: ["Extensions"]),
    ]
)
