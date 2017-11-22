// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Crypto",
    products: [
        .library(name: "Crypto", targets: ["Crypto"])
    ],
    dependencies: [
        .package(url: "https://github.com/soffes/CommonCrypto", .branch("spm"))
    ],
    targets: [
        .target(name: "Crypto"),
        .testTarget(name: "CryptoTests", dependencies: ["Crypto"])
    ]
)
