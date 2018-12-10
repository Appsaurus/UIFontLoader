// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "UIFontLoader",
	products: [
		.library(name: "UIFontLoader", targets: ["UIFontLoader"])
	],
	dependencies: [],
	targets: [
	.target(name: "UIFontLoader", dependencies: [], path: "Sources/Shared"),
		.testTarget(name: "UIFontLoaderTests", dependencies: ["UIFontLoader"], path: "UIFontLoaderTests/Shared")
	]
)
