// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SYPictureMetadata",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "SYPictureMetadata",
            targets: ["SYPictureMetadata"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(name: "SYPictureMetadata"),
        .testTarget(
            name: "SYPictureMetadataTests",
            dependencies: ["SYPictureMetadata"],
            resources: [
                .process("Resources"),
                .process("Keys"),
            ]
        ),
    ]
)
