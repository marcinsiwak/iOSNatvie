// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Playground",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Playground",
            targets: ["Playground"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.9.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Playground",
            dependencies: ["Swinject"]
        ),
        .testTarget(
            name: "PlaygroundTests",
            dependencies: ["Playground"]
        ),
    ]
)
