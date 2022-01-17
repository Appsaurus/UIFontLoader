// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIFontLoader",
    platforms: [
        .iOS(.v9),
        .macCatalyst(.v13),
        .tvOS(.v9),
        .watchOS(.v3),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "UIFontLoader",
            targets: [
                "UIFontLoader",
            ]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "UIFontLoader",
            dependencies: [
            ],
            path: "Sources/UIFontLoader/",
            resources: [
                .process("Resources"),
            ]
        ),
        .testTarget(
            name: "UIFontLoaderTests",
            dependencies: [
                "UIFontLoader",
            ],
            path: "Tests/UIFontLoader/",
            exclude: [
                "Resources/README.md",
                "Toolbox/README.md",
            ],
            resources: [
                .process("Resources"),
            ]
        ),
    ]
)
