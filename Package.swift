// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "CryptoSwift",
  platforms: [
    .macOS(.v10_10), .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(
      name: "CryptoSwift",
      targets: ["CryptoSwift"]
    )
  ],
  dependencies: [
      // Dependencies declare other packages that this package depends on.
       .package(url: "https://github.com/keefertaylor/Base58Swift.git", from: "2.1.14"),
  ],
  targets: [
    .target(name: "CryptoSwift", dependencies: ["Base58Swift"]),
    .testTarget(name: "CryptoSwiftTests", dependencies: ["CryptoSwift"]),
    .testTarget(name: "TestsPerformance", dependencies: ["CryptoSwift"])
  ],
  swiftLanguageVersions: [.v5]
)
