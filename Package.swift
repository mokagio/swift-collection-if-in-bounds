// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-collection-if-in-bounds",
    products: [
        .library(
            name: "swift-collection-if-in-bounds",
            targets: ["swift-collection-if-in-bounds"]),
    ],
    targets: [
        .target(
            name: "swift-collection-if-in-bounds",
            dependencies: []),
        .testTarget(
            name: "swift-collection-if-in-boundsTests",
            dependencies: ["swift-collection-if-in-bounds"]),
    ]
)
