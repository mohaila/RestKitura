// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RestKitura",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.7.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.8.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.0.0"),
        .package(url: "https://github.com/IBM-Swift/Health.git", from: "1.0.0"),
        .package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", from: "2.6.0"),        
    ],
    targets: [
        .target(
            name: "Application",
            dependencies: ["Kitura", "HeliumLogger", "Health", "SwiftMetrics"]),
        .target(
            name: "RestKitura",
            dependencies: ["Application"]),
        .testTarget(
            name: "VanillaTests",
            dependencies: ["Quick", "Nimble"]),
    ]
)
