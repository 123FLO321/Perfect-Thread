// swift-tools-version:5.2

import PackageDescription

#if os(Linux)
let package = Package(
	name: "PerfectThread",
	products: [
		.library(
			name: "PerfectThread",
			targets: ["PerfectThread"]),
		],
	dependencies: [
		.package(name: "LinuxBridge", url: "https://github.com/123FLO321/Perfect-LinuxBridge.git", .branch("swift5")),
	],
	targets: [
		.target(
			name: "PerfectThread",
			dependencies: ["LinuxBridge"]),
		.testTarget(
			name: "PerfectThreadTests",
			dependencies: ["PerfectThread"]),
		]
)
#else
let package = Package(
	name: "PerfectThread",
    platforms: [
        .macOS(.v10_15)
    ],
	products: [
		.library(
			name: "PerfectThread",
			targets: ["PerfectThread"]),
		],
	dependencies: [
	],
	targets: [
		.target(
			name: "PerfectThread",
			dependencies: []),
		.testTarget(
			name: "PerfectThreadTests",
			dependencies: ["PerfectThread"]),
		]
)
#endif
