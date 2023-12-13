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
            url: "https://github.com/yanniks/realm-swift-distribution/releases/download/v10.44.0/Realm.spm.zip",
            checksum: "ac357a712f6ea5cdade9a12014f2c79478774ff6508ef636f0d37fbb289d891e"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/yanniks/realm-swift-distribution/releases/download/v10.44.0/RealmSwift@15.1.spm.zip",
            checksum: "c5b9d4e60a0b218ac6b6e04231335405f5c8de60eca5bac2191b76650267aefa"
        ),
    ]
)
