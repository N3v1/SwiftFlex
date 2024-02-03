// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftFlex",
    platforms: [
            .iOS(.v17),
            .macOS(.v14),
            .tvOS(.v17),
            .watchOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftFlex",
            targets: ["_SwiftFlex", "SwiftFlex"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "_SwiftFlex",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags([
                    "-enable-library-evolution", "-suppress-warnings"
                ])
            ]
        ),
        .target(
            name: "SwiftFlex",
            dependencies: ["_SwiftFlex"],
            swiftSettings: [
                .unsafeFlags([
                    "-enable-library-evolution",
                    "-Xfrontend",
                    "-disable-typo-correction",
                    "-Xfrontend",
                    "-disable-verify-exclusivity",
                ])
            ]
        )
    ]
)
