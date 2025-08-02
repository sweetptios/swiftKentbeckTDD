// swift-tools-version: 6.0
import PackageDescription
//import struct ProjectDescription.PackageSettings
//
//let packageSettings = PackageSettings(
//// Customize the product types for specific package product
//// Default is .staticFramework
//// productTypes: ["Alamofire": .framework,]
//    productTypes: [
//        "Quick": .framework,
//        "Nimble": .framework,
//    ]
//)

let package = Package(
    name: "SwiftKentbeckTDD",
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMinor(from: "7.6.2")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMinor(from: "13.7.1")),
    ]
)
