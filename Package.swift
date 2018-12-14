// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var dependencies: [Package.Dependency] = []
var targetDependencies: [Target.Dependency] = []

#if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
#if canImport(CommonCrypto)
#else
dependencies.append(Package.Dependency.package(url: "https://github.com/IBM-Swift/CommonCrypto.git", from: "1.0.0"))
targetDependencies.append(Target.Dependency.byName(name: "CommonCrypto"))
#endif
#elseif os(Linux)
dependencies.append(Package.Dependency.package(url: "https://github.com/IBM-Swift/OpenSSL.git", from: "1.0.0"))
targetDependencies.append(Target.Dependency.byName(name: "OpenSSL"))
#else
fatalError("Unsupported OS")
#endif 

let package = Package(
    name: "JDCloudSDKSwift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "JDCloudSDKSwift",
            targets: ["JDCloudSDKCore","JDCloudSDKVm"]),
    ],
    dependencies: dependencies,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "JDCloudSDKCore",
            dependencies: targetDependencies,
            path: "Sources/JDCloudSDKCore",
            exclude: ["Sources/JDCloudSDKCore/JDCloudSDKCore_Info.plist","Sources/JDCloudSDKCore/JDCloudSDKCore.h"]),
        .target(
            name: "JDCloudSDKVm",
            dependencies: ["JDCloudSDKCore","JDCloudSDKVpc","JDCloudSDKCommon","JDCloudSDKDisk","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKVm",
            exclude: ["Sources/JDCloudSDKVm/JDCloudSDKVm_Info.plist","Sources/JDCloudSDKVm/JDCloudSDKVm.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .testTarget(
            name: "JDCloudSDKSwiftTests",
            dependencies: ["JDCloudSDKVm","JDCloudSDKCore"],
            path: "Tests"),
    ]
)
