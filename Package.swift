// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "JSONSchema",
  platforms: [
    .macOS(.v10_13), .iOS(.v11), .tvOS(.v11)
  ],
  products: [
    .library(name: "JSONSchema", targets: ["JSONSchema"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(name: "JSONSchema", dependencies: [], path: "Sources"),
    .testTarget(name: "JSONSchemaTests", dependencies: ["JSONSchema"]),
  ]
)
