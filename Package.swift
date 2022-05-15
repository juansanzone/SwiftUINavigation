// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUINavigation",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SwiftUINavigation",
            targets: ["SwiftUINavigation"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/siteline/SwiftUI-Introspect.git", .branch("master")
        ),
    ],
    targets: [
        .target(
            name: "SwiftUINavigation",
            dependencies: [
                .product(name: "Introspect", package: "SwiftUI-Introspect")
            ]),
        .testTarget(
            name: "SwiftUINavigationTests",
            dependencies: ["SwiftUINavigation"]
        ),
    ]
)
