// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "v10.50.2"

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
            url: "https://github.com/yanniks/realm-swift-distribution/releases/download/\(version)/Realm.spm.zip",
            checksum: "cbf04e54ee6f8ec52d8dd85d93773b2729e584c838df052084feccbfdf2687b4"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/yanniks/realm-swift-distribution/releases/download/\(version)/RealmSwift@15.4.spm.zip",
            checksum: "ee7e02004d0e7ebd90966431feb72c88e1e93bd35a6a7bfeb22d80bc3e1dba13"
        ),
    ]
)
