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
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.0/Realm.xcframework.zip",
            checksum: "7f9a35c79761daa3384c3d8bdc830092c086efc61922befda8fe24c6e78c3d1c"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.0/RealmSwift@15.0.xcframework.zip",
            checksum: "c115d1ee1a375d4904f48d4e0884bccc3148c53e159a34c9a4a44499d1d44475"
        ),
    ]
)
