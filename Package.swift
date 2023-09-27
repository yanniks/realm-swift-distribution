// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Realm",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
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
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.4/Realm.spm.zip",
            checksum: "bba1b1776b489eeedf0331a79affcf506e2134b33ed946098ecfae11942e1dd7"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.4/RealmSwift@15.0.spm.zip",
            checksum: "a7040755263d52553c475c3b1264340d2b9f0fce0c1cce5bdf31e3a4f9917fe2"
        ),
    ]
)
