// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Realm",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"]
        ),
        .library(
            name: "RealmSwift",
            targets: ["Realm", "RealmSwift"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Realm",
            url: "https://github.com/realm/realm-swift/releases/download/v10.45.0/Realm.spm.zip",
            checksum: "5215a659194877250a3ace4037ff228e217a77cd56af566bcc5f55730654a896"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.45.0/RealmSwift@15.1.spm.zip",
            checksum: "b8c4f8d88c574420a0668cb46d6b0d3cf30c4d0076128540ae2e092c538c04e4"
        ),
    ]
)
