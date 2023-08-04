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
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.0/Realm.xcframework.zip",
            checksum: "7f9a35c79761daa3384c3d8bdc830092c086efc61922befda8fe24c6e78c3d1c"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.42.0/RealmSwift@14.2.xcframework.zip",
            checksum: "3a0b55541065d895b8833668df70959bea13d85307326b42c4995832e0ccdb5a"
        ),
    ]
)
