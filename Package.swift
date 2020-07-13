// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "LookupTable",
    platforms: [
        .iOS(.v10),
        .watchOS(.v4),
        .tvOS(.v10),
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "LookupTable",
            targets: ["LookupTable"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/wltrup/RandomAccessCollectionBinarySearch.git", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "LookupTable",
            dependencies: [
                "RandomAccessCollectionBinarySearch",
            ]
        ),
        .testTarget(
            name: "LookupTableTests",
            dependencies: [
                "LookupTable",
            ]
        ),
    ]
)
