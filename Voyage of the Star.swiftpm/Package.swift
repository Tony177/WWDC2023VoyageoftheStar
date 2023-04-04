// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Voyage of the Star",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "Voyage of the Star",
            targets: ["AppModule"],
            bundleIdentifier: "com.tony177.Voyage-of-the-Star",
            teamIdentifier: "W48GBB265B",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .landscapeRight,
                .landscapeLeft
            ],
            appCategory: .education
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)