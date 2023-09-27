// swift-tools-version: 5.7
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
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.4/RealmSwift@14.2.spm.zip",
            checksum: "d3ed1e52e3e27a74410bcf52723bdc2284fa0abd2db3f264b4bf02859e386bf6"
        ),
    ]
)
