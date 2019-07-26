// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
// swift package generate-xcodeproj --xcconfig-overrides Package.xcconfig
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
            targets: ["JDCloudSDKCore", "JDCloudSDKRds","JDCloudSDKKubernetes","JDCloudSDKStreamcomputer","JDCloudSDKSsl","JDCloudSDKIpanti","JDCloudSDKRedis","JDCloudSDKOss","JDCloudSDKAntipro","JDCloudSDKDeploy","JDCloudSDKBilling","JDCloudSDKCompile","JDCloudSDKSop","JDCloudSDKFunction","JDCloudSDKRms","JDCloudSDKPortal","JDCloudSDKLogs","JDCloudSDKOrder","JDCloudSDKClouddnsservice","JDCloudSDKAg","JDCloudSDKCps","JDCloudSDKStreambus","JDCloudSDKHttpdns","JDCloudSDKMps","JDCloudSDKDisk","JDCloudSDKSts","JDCloudSDKNc","JDCloudSDKVm","JDCloudSDKNativecontainer","JDCloudSDKPod","JDCloudSDKJke","JDCloudSDKAms","JDCloudSDKZfs","JDCloudSDKJdro","JDCloudSDKVod","JDCloudSDKYundingdatapush","JDCloudSDKDatastar","JDCloudSDKKms","JDCloudSDKElite","JDCloudSDKOssopenapi","JDCloudSDKCommon","JDCloudSDKIam","JDCloudSDKSms","JDCloudSDKIothub","JDCloudSDKJcq","JDCloudSDKIas","JDCloudSDKBaseanti","JDCloudSDKMongodb","JDCloudSDKLive","JDCloudSDKJdfusion","JDCloudSDKCharge","JDCloudSDKRenewal","JDCloudSDKVpc","JDCloudSDKMonitor","JDCloudSDKXdata","JDCloudSDKCr","JDCloudSDKPipeline","JDCloudSDKContainerregistry","JDCloudSDKPartner","JDCloudSDKJdw",]),
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
            name: "JDCloudSDKRds",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKRds",
            exclude: ["Sources/JDCloudSDKRds/JDCloudSDKRds_Info.plist","Sources/JDCloudSDKRds/JDCloudSDKRds.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKKubernetes",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKKubernetes",
            exclude: ["Sources/JDCloudSDKKubernetes/JDCloudSDKKubernetes_Info.plist","Sources/JDCloudSDKKubernetes/JDCloudSDKKubernetes.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKStreamcomputer",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKStreamcomputer",
            exclude: ["Sources/JDCloudSDKStreamcomputer/JDCloudSDKStreamcomputer_Info.plist","Sources/JDCloudSDKStreamcomputer/JDCloudSDKStreamcomputer.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKSsl",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKSsl",
            exclude: ["Sources/JDCloudSDKSsl/JDCloudSDKSsl_Info.plist","Sources/JDCloudSDKSsl/JDCloudSDKSsl.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKIpanti",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKIpanti",
            exclude: ["Sources/JDCloudSDKIpanti/JDCloudSDKIpanti_Info.plist","Sources/JDCloudSDKIpanti/JDCloudSDKIpanti.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKRedis",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKRedis",
            exclude: ["Sources/JDCloudSDKRedis/JDCloudSDKRedis_Info.plist","Sources/JDCloudSDKRedis/JDCloudSDKRedis.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOss",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOss",
            exclude: ["Sources/JDCloudSDKOss/JDCloudSDKOss_Info.plist","Sources/JDCloudSDKOss/JDCloudSDKOss.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKAntipro",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKAntipro",
            exclude: ["Sources/JDCloudSDKAntipro/JDCloudSDKAntipro_Info.plist","Sources/JDCloudSDKAntipro/JDCloudSDKAntipro.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKDeploy",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKDeploy",
            exclude: ["Sources/JDCloudSDKDeploy/JDCloudSDKDeploy_Info.plist","Sources/JDCloudSDKDeploy/JDCloudSDKDeploy.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKBilling",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKBilling",
            exclude: ["Sources/JDCloudSDKBilling/JDCloudSDKBilling_Info.plist","Sources/JDCloudSDKBilling/JDCloudSDKBilling.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCompile",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKCompile",
            exclude: ["Sources/JDCloudSDKCompile/JDCloudSDKCompile_Info.plist","Sources/JDCloudSDKCompile/JDCloudSDKCompile.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKSop",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKSop",
            exclude: ["Sources/JDCloudSDKSop/JDCloudSDKSop_Info.plist","Sources/JDCloudSDKSop/JDCloudSDKSop.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKFunction",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKFunction",
            exclude: ["Sources/JDCloudSDKFunction/JDCloudSDKFunction_Info.plist","Sources/JDCloudSDKFunction/JDCloudSDKFunction.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKRms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKRms",
            exclude: ["Sources/JDCloudSDKRms/JDCloudSDKRms_Info.plist","Sources/JDCloudSDKRms/JDCloudSDKRms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKPortal",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKPortal",
            exclude: ["Sources/JDCloudSDKPortal/JDCloudSDKPortal_Info.plist","Sources/JDCloudSDKPortal/JDCloudSDKPortal.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKLogs",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKLogs",
            exclude: ["Sources/JDCloudSDKLogs/JDCloudSDKLogs_Info.plist","Sources/JDCloudSDKLogs/JDCloudSDKLogs.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOrder",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOrder",
            exclude: ["Sources/JDCloudSDKOrder/JDCloudSDKOrder_Info.plist","Sources/JDCloudSDKOrder/JDCloudSDKOrder.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKClouddnsservice",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKClouddnsservice",
            exclude: ["Sources/JDCloudSDKClouddnsservice/JDCloudSDKClouddnsservice_Info.plist","Sources/JDCloudSDKClouddnsservice/JDCloudSDKClouddnsservice.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKAg",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKAg",
            exclude: ["Sources/JDCloudSDKAg/JDCloudSDKAg_Info.plist","Sources/JDCloudSDKAg/JDCloudSDKAg.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCps",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKCps",
            exclude: ["Sources/JDCloudSDKCps/JDCloudSDKCps_Info.plist","Sources/JDCloudSDKCps/JDCloudSDKCps.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKStreambus",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKStreambus",
            exclude: ["Sources/JDCloudSDKStreambus/JDCloudSDKStreambus_Info.plist","Sources/JDCloudSDKStreambus/JDCloudSDKStreambus.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKHttpdns",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKHttpdns",
            exclude: ["Sources/JDCloudSDKHttpdns/JDCloudSDKHttpdns_Info.plist","Sources/JDCloudSDKHttpdns/JDCloudSDKHttpdns.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMps",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKMps",
            exclude: ["Sources/JDCloudSDKMps/JDCloudSDKMps_Info.plist","Sources/JDCloudSDKMps/JDCloudSDKMps.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKDisk",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKDisk",
            exclude: ["Sources/JDCloudSDKDisk/JDCloudSDKDisk_Info.plist","Sources/JDCloudSDKDisk/JDCloudSDKDisk.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKSts",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKSts",
            exclude: ["Sources/JDCloudSDKSts/JDCloudSDKSts_Info.plist","Sources/JDCloudSDKSts/JDCloudSDKSts.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKNc",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge","JDCloudSDKDisk",],
            path: "Sources/JDCloudSDKNc",
            exclude: ["Sources/JDCloudSDKNc/JDCloudSDKNc_Info.plist","Sources/JDCloudSDKNc/JDCloudSDKNc.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKVm",
            dependencies: ["JDCloudSDKCore","JDCloudSDKVpc","JDCloudSDKCommon","JDCloudSDKDisk","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKVm",
            exclude: ["Sources/JDCloudSDKVm/JDCloudSDKVm_Info.plist","Sources/JDCloudSDKVm/JDCloudSDKVm.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKNativecontainer",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge","JDCloudSDKDisk",],
            path: "Sources/JDCloudSDKNativecontainer",
            exclude: ["Sources/JDCloudSDKNativecontainer/JDCloudSDKNativecontainer_Info.plist","Sources/JDCloudSDKNativecontainer/JDCloudSDKNativecontainer.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKPod",
            dependencies: ["JDCloudSDKCore","JDCloudSDKNc","JDCloudSDKCommon","JDCloudSDKCharge","JDCloudSDKVpc",],
            path: "Sources/JDCloudSDKPod",
            exclude: ["Sources/JDCloudSDKPod/JDCloudSDKPod_Info.plist","Sources/JDCloudSDKPod/JDCloudSDKPod.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJke",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKJke",
            exclude: ["Sources/JDCloudSDKJke/JDCloudSDKJke_Info.plist","Sources/JDCloudSDKJke/JDCloudSDKJke.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKAms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKAms",
            exclude: ["Sources/JDCloudSDKAms/JDCloudSDKAms_Info.plist","Sources/JDCloudSDKAms/JDCloudSDKAms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKZfs",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKZfs",
            exclude: ["Sources/JDCloudSDKZfs/JDCloudSDKZfs_Info.plist","Sources/JDCloudSDKZfs/JDCloudSDKZfs.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJdro",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJdro",
            exclude: ["Sources/JDCloudSDKJdro/JDCloudSDKJdro_Info.plist","Sources/JDCloudSDKJdro/JDCloudSDKJdro.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKVod",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKVod",
            exclude: ["Sources/JDCloudSDKVod/JDCloudSDKVod_Info.plist","Sources/JDCloudSDKVod/JDCloudSDKVod.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKYundingdatapush",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKYundingdatapush",
            exclude: ["Sources/JDCloudSDKYundingdatapush/JDCloudSDKYundingdatapush_Info.plist","Sources/JDCloudSDKYundingdatapush/JDCloudSDKYundingdatapush.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKDatastar",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKDatastar",
            exclude: ["Sources/JDCloudSDKDatastar/JDCloudSDKDatastar_Info.plist","Sources/JDCloudSDKDatastar/JDCloudSDKDatastar.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKKms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKKms",
            exclude: ["Sources/JDCloudSDKKms/JDCloudSDKKms_Info.plist","Sources/JDCloudSDKKms/JDCloudSDKKms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKElite",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKElite",
            exclude: ["Sources/JDCloudSDKElite/JDCloudSDKElite_Info.plist","Sources/JDCloudSDKElite/JDCloudSDKElite.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOssopenapi",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOssopenapi",
            exclude: ["Sources/JDCloudSDKOssopenapi/JDCloudSDKOssopenapi_Info.plist","Sources/JDCloudSDKOssopenapi/JDCloudSDKOssopenapi.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCommon",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCommon",
            exclude: ["Sources/JDCloudSDKCommon/JDCloudSDKCommon_Info.plist","Sources/JDCloudSDKCommon/JDCloudSDKCommon.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKIam",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKIam",
            exclude: ["Sources/JDCloudSDKIam/JDCloudSDKIam_Info.plist","Sources/JDCloudSDKIam/JDCloudSDKIam.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKSms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKSms",
            exclude: ["Sources/JDCloudSDKSms/JDCloudSDKSms_Info.plist","Sources/JDCloudSDKSms/JDCloudSDKSms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKIothub",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKIothub",
            exclude: ["Sources/JDCloudSDKIothub/JDCloudSDKIothub_Info.plist","Sources/JDCloudSDKIothub/JDCloudSDKIothub.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJcq",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKJcq",
            exclude: ["Sources/JDCloudSDKJcq/JDCloudSDKJcq_Info.plist","Sources/JDCloudSDKJcq/JDCloudSDKJcq.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKIas",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKIas",
            exclude: ["Sources/JDCloudSDKIas/JDCloudSDKIas_Info.plist","Sources/JDCloudSDKIas/JDCloudSDKIas.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKBaseanti",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKBaseanti",
            exclude: ["Sources/JDCloudSDKBaseanti/JDCloudSDKBaseanti_Info.plist","Sources/JDCloudSDKBaseanti/JDCloudSDKBaseanti.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMongodb",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKMongodb",
            exclude: ["Sources/JDCloudSDKMongodb/JDCloudSDKMongodb_Info.plist","Sources/JDCloudSDKMongodb/JDCloudSDKMongodb.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKLive",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKLive",
            exclude: ["Sources/JDCloudSDKLive/JDCloudSDKLive_Info.plist","Sources/JDCloudSDKLive/JDCloudSDKLive.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJdfusion",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJdfusion",
            exclude: ["Sources/JDCloudSDKJdfusion/JDCloudSDKJdfusion_Info.plist","Sources/JDCloudSDKJdfusion/JDCloudSDKJdfusion.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCharge",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCharge",
            exclude: ["Sources/JDCloudSDKCharge/JDCloudSDKCharge_Info.plist","Sources/JDCloudSDKCharge/JDCloudSDKCharge.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKRenewal",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKRenewal",
            exclude: ["Sources/JDCloudSDKRenewal/JDCloudSDKRenewal_Info.plist","Sources/JDCloudSDKRenewal/JDCloudSDKRenewal.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKVpc",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKVpc",
            exclude: ["Sources/JDCloudSDKVpc/JDCloudSDKVpc_Info.plist","Sources/JDCloudSDKVpc/JDCloudSDKVpc.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMonitor",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKMonitor",
            exclude: ["Sources/JDCloudSDKMonitor/JDCloudSDKMonitor_Info.plist","Sources/JDCloudSDKMonitor/JDCloudSDKMonitor.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKXdata",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKXdata",
            exclude: ["Sources/JDCloudSDKXdata/JDCloudSDKXdata_Info.plist","Sources/JDCloudSDKXdata/JDCloudSDKXdata.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCr",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKCr",
            exclude: ["Sources/JDCloudSDKCr/JDCloudSDKCr_Info.plist","Sources/JDCloudSDKCr/JDCloudSDKCr.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKPipeline",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKPipeline",
            exclude: ["Sources/JDCloudSDKPipeline/JDCloudSDKPipeline_Info.plist","Sources/JDCloudSDKPipeline/JDCloudSDKPipeline.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKContainerregistry",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKContainerregistry",
            exclude: ["Sources/JDCloudSDKContainerregistry/JDCloudSDKContainerregistry_Info.plist","Sources/JDCloudSDKContainerregistry/JDCloudSDKContainerregistry.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKPartner",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKPartner",
            exclude: ["Sources/JDCloudSDKPartner/JDCloudSDKPartner_Info.plist","Sources/JDCloudSDKPartner/JDCloudSDKPartner.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJdw",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKJdw",
            exclude: ["Sources/JDCloudSDKJdw/JDCloudSDKJdw_Info.plist","Sources/JDCloudSDKJdw/JDCloudSDKJdw.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .testTarget(
            name: "JDCloudSDKSwiftTests",
            dependencies: ["JDCloudSDKVm","JDCloudSDKCore"],
            path: "Tests"),
    ]
)
