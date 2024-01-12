// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UI_Kit_Package",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UI_Kit_Package",
            targets: ["UI_Kit_Package"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UI_Kit_Package",
            resources: [
                .copy("Sources/Localization/en.json"),
                .copy("Sources/Localization/ar.json"),
            ]
        ),
        .testTarget(
            name: "UI_Kit_PackageTests",
            dependencies: ["UI_Kit_Package"]),
    ]
)
