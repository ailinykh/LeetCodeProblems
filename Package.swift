// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeetCodeProblems",
    dependencies: [],
    targets: [
        .executableTarget(
            name: "LeetCodeProblems",
            dependencies: []),
        .testTarget(
            name: "LeetCodeProblemsTests",
            dependencies: ["LeetCodeProblems"]
            ),
    ]
)
