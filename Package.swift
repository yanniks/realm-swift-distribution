// swift-tools-version: 5.10
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
            url: "https://github.com/realm/realm-swift/releases/download/v10.48.0/Realm.spm.zip",
            checksum: "bb63b20a9d0b6651777c16549006a11af6b7556db6e2991ed57eadda62974979"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.48.0/RealmSwift@15.3.spm.zip",
            checksum: "36d860d326237b9950d2650f1bc9000b1af0540ce1a9967ae5d7f28be7956456"
        ),
    ]
)
