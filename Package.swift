// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "v10.50.1"

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
            url: "https://github.com/realm/realm-swift/releases/download/\(version)/Realm.spm.zip",
            checksum: "942fc39917f4d572d5a2aae6a115c9f50a0954e61351aed3553c84d63ad3f2dc"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/\(version)/RealmSwift@15.4.spm.zip",
            checksum: "208755d16d189372065e43901e5406e050197f98207142bc788487068f1a0843"
        ),
    ]
)
