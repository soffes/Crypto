// swift-tools-version:5.0.0

import PackageDescription

let package = Package(
    name: "Crypto",
    products: [
        .library(name: "Crypto", targets: ["Crypto"])
    ],
    targets: [
        .target(name: "Crypto"),
        .testTarget(name: "CryptoTests", dependencies: ["Crypto"])
    ]
)
