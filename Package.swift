// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NodeJSTV",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NodeJSTV",
            targets: ["NodeJSTV"]),
        
    ],
    dependencies: [
        
        .package(url: "https://github.com/kewlbear/nodejs-ios.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/NodeDecoder.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/NodeBridge.git", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NodeJSTV",
            dependencies: [
                "nodejs-ios",
//                "node_api",
                "NodeBridge",
                "NodeDecoder"
            ]),
    ]
)
