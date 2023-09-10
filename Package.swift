// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "hummingbird-app",
    products: [
        .executable(name: "app", targets: ["app"])
    ],
    dependencies: [
        .package(url: "https://github.com/hummingbird-project/hummingbird", from: "1.8.1"),
        //.package(url: "https://github.com/alchemy-swift/aws", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "app",
            dependencies: [
                .product(name: "Hummingbird", package: "hummingbird")
            ]
        ),
    ]
)
