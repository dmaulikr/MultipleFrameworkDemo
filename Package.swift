// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MultipleFrameworkDemo",
    platforms: [.iOS(.v13)],
    products: [
        /* Only the selectable features are shown to users */
        .library(name: "FeatureA", targets: ["FeatureA"]),
        .library(name: "FeatureB", targets: ["FeatureB"]),
        .library(name: "FeatureC", targets: ["FeatureC"]),
        .library(name: "FeatureD", targets: ["FeatureD"]),
    ], dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-ios.git",
            from: "4.4.0"),
    ],
    targets: [

        /* --- hidden, mandatory pieces --- */
        .target(name: "CoreA"),          // Sources/CoreA/…
        .target(name: "CoreB"),          // Sources/CoreB/…
        .target(name: "CoreKit",         // Sources/CoreKit/CoreKit.swift
                dependencies: ["CoreA", "CoreB"]),

        /* --- public feature targets --- */
        .target(name: "FeatureA", dependencies: ["CoreKit"]),
        .target(name: "FeatureB", dependencies: ["CoreKit"]),
        .target(name: "FeatureC", dependencies: ["CoreKit"]),
        .target(name: "FeatureD", dependencies: ["CoreKit"]),
    ]
)
