// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "HKDF",
    platforms: [
        .macOS(.v11),
        .iOS(.v14)
    ],
    products: [
        .library(name: "HKDF", targets: ["HKDF"]),
    ],
    dependencies: [
        .package(name: "Cryptor", url: "https://github.com/IBM-Swift/BlueCryptor.git", from: "1.0.14"),
    ],
    targets: [
        .target(name: "HKDF", dependencies: ["Cryptor"], path: "Sources"),
        .testTarget(name: "HKDFTests", dependencies: ["HKDF"]),
    ],
    swiftLanguageVersions: [.v5]
)
