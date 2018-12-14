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
            targets: ["JDCloudSDKCore", "JDCloudSDKRds","JDCloudSDKAudittrail","JDCloudSDKYd2","JDCloudSDKStreamcomputer","JDCloudSDKSsl","JDCloudSDKJqs","JDCloudSDKIpanti","JDCloudSDKRedis","JDCloudSDKOss","JDCloudSDKAntipro","JDCloudSDKJmr","JDCloudSDKDeploy","JDCloudSDKBilling","JDCloudSDKCompile","JDCloudSDKSop","JDCloudSDKPms","JDCloudSDKQuota","JDCloudSDKOrder","JDCloudSDKSgw","JDCloudSDKClouddnsservice","JDCloudSDKAg","JDCloudSDKContract","JDCloudSDKCps","JDCloudSDKCdn","JDCloudSDKKmscap","JDCloudSDKJdsfadmin","JDCloudSDKEs","JDCloudSDKStreambus","JDCloudSDKHttpdns","JDCloudSDKApigateway","JDCloudSDKMps","JDCloudSDKMonitorcm","JDCloudSDKDisk","JDCloudSDKCds","JDCloudSDKSts","JDCloudSDKNc","JDCloudSDKVm","JDCloudSDKIds","JDCloudSDKAutoscaling","JDCloudSDKJdsf","JDCloudSDKMemcached","JDCloudSDKPod","JDCloudSDKJke","JDCloudSDKJdro","JDCloudSDKCms","JDCloudSDKHufugateway","JDCloudSDKOmpopenapi","JDCloudSDKDdos","JDCloudSDKVod","JDCloudSDKDatastar","JDCloudSDKKms","JDCloudSDKOssbiz","JDCloudSDKUcapi","JDCloudSDKOssopenapi","JDCloudSDKOms","JDCloudSDKCommon","JDCloudSDKIam","JDCloudSDKJcq","JDCloudSDKResourcetag","JDCloudSDKIas","JDCloudSDKBaseanti","JDCloudSDKArk","JDCloudSDKMongodb","JDCloudSDKCostcenter","JDCloudSDKBizrisk","JDCloudSDKEsgroup","JDCloudSDKCharge","JDCloudSDKCost","JDCloudSDKRenewal","JDCloudSDKYunding","JDCloudSDKVpcwaf","JDCloudSDKVpc","JDCloudSDKMonitor","JDCloudSDKXdata","JDCloudSDKCr","JDCloudSDKPipeline","JDCloudSDKCsa","JDCloudSDKBds","JDCloudSDKPartner","JDCloudSDKHips","JDCloudSDKLb","JDCloudSDKUser","JDCloudSDKTs",]),
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
            dependencies: ["JDCloudSDKCore","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKRds",
            exclude: ["Sources/JDCloudSDKRds/JDCloudSDKRds_Info.plist","Sources/JDCloudSDKRds/JDCloudSDKRds.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKAudittrail",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKAudittrail",
            exclude: ["Sources/JDCloudSDKAudittrail/JDCloudSDKAudittrail_Info.plist","Sources/JDCloudSDKAudittrail/JDCloudSDKAudittrail.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKYd2",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKYd2",
            exclude: ["Sources/JDCloudSDKYd2/JDCloudSDKYd2_Info.plist","Sources/JDCloudSDKYd2/JDCloudSDKYd2.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKJqs",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJqs",
            exclude: ["Sources/JDCloudSDKJqs/JDCloudSDKJqs_Info.plist","Sources/JDCloudSDKJqs/JDCloudSDKJqs.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKIpanti",
            dependencies: ["JDCloudSDKCore",],
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
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKAntipro",
            exclude: ["Sources/JDCloudSDKAntipro/JDCloudSDKAntipro_Info.plist","Sources/JDCloudSDKAntipro/JDCloudSDKAntipro.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJmr",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJmr",
            exclude: ["Sources/JDCloudSDKJmr/JDCloudSDKJmr_Info.plist","Sources/JDCloudSDKJmr/JDCloudSDKJmr.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKPms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKPms",
            exclude: ["Sources/JDCloudSDKPms/JDCloudSDKPms_Info.plist","Sources/JDCloudSDKPms/JDCloudSDKPms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKQuota",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKQuota",
            exclude: ["Sources/JDCloudSDKQuota/JDCloudSDKQuota_Info.plist","Sources/JDCloudSDKQuota/JDCloudSDKQuota.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOrder",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOrder",
            exclude: ["Sources/JDCloudSDKOrder/JDCloudSDKOrder_Info.plist","Sources/JDCloudSDKOrder/JDCloudSDKOrder.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKSgw",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKSgw",
            exclude: ["Sources/JDCloudSDKSgw/JDCloudSDKSgw_Info.plist","Sources/JDCloudSDKSgw/JDCloudSDKSgw.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKContract",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKContract",
            exclude: ["Sources/JDCloudSDKContract/JDCloudSDKContract_Info.plist","Sources/JDCloudSDKContract/JDCloudSDKContract.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCps",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKCps",
            exclude: ["Sources/JDCloudSDKCps/JDCloudSDKCps_Info.plist","Sources/JDCloudSDKCps/JDCloudSDKCps.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCdn",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCdn",
            exclude: ["Sources/JDCloudSDKCdn/JDCloudSDKCdn_Info.plist","Sources/JDCloudSDKCdn/JDCloudSDKCdn.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKKmscap",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKKmscap",
            exclude: ["Sources/JDCloudSDKKmscap/JDCloudSDKKmscap_Info.plist","Sources/JDCloudSDKKmscap/JDCloudSDKKmscap.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJdsfadmin",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJdsfadmin",
            exclude: ["Sources/JDCloudSDKJdsfadmin/JDCloudSDKJdsfadmin_Info.plist","Sources/JDCloudSDKJdsfadmin/JDCloudSDKJdsfadmin.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKEs",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKEs",
            exclude: ["Sources/JDCloudSDKEs/JDCloudSDKEs_Info.plist","Sources/JDCloudSDKEs/JDCloudSDKEs.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKApigateway",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKApigateway",
            exclude: ["Sources/JDCloudSDKApigateway/JDCloudSDKApigateway_Info.plist","Sources/JDCloudSDKApigateway/JDCloudSDKApigateway.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMps",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKMps",
            exclude: ["Sources/JDCloudSDKMps/JDCloudSDKMps_Info.plist","Sources/JDCloudSDKMps/JDCloudSDKMps.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMonitorcm",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKMonitorcm",
            exclude: ["Sources/JDCloudSDKMonitorcm/JDCloudSDKMonitorcm_Info.plist","Sources/JDCloudSDKMonitorcm/JDCloudSDKMonitorcm.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKDisk",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKDisk",
            exclude: ["Sources/JDCloudSDKDisk/JDCloudSDKDisk_Info.plist","Sources/JDCloudSDKDisk/JDCloudSDKDisk.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCds",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCds",
            exclude: ["Sources/JDCloudSDKCds/JDCloudSDKCds_Info.plist","Sources/JDCloudSDKCds/JDCloudSDKCds.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKIds",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKIds",
            exclude: ["Sources/JDCloudSDKIds/JDCloudSDKIds_Info.plist","Sources/JDCloudSDKIds/JDCloudSDKIds.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKAutoscaling",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKAutoscaling",
            exclude: ["Sources/JDCloudSDKAutoscaling/JDCloudSDKAutoscaling_Info.plist","Sources/JDCloudSDKAutoscaling/JDCloudSDKAutoscaling.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKJdsf",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJdsf",
            exclude: ["Sources/JDCloudSDKJdsf/JDCloudSDKJdsf_Info.plist","Sources/JDCloudSDKJdsf/JDCloudSDKJdsf.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMemcached",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKMemcached",
            exclude: ["Sources/JDCloudSDKMemcached/JDCloudSDKMemcached_Info.plist","Sources/JDCloudSDKMemcached/JDCloudSDKMemcached.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKJdro",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJdro",
            exclude: ["Sources/JDCloudSDKJdro/JDCloudSDKJdro_Info.plist","Sources/JDCloudSDKJdro/JDCloudSDKJdro.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCms",
            exclude: ["Sources/JDCloudSDKCms/JDCloudSDKCms_Info.plist","Sources/JDCloudSDKCms/JDCloudSDKCms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKHufugateway",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKHufugateway",
            exclude: ["Sources/JDCloudSDKHufugateway/JDCloudSDKHufugateway_Info.plist","Sources/JDCloudSDKHufugateway/JDCloudSDKHufugateway.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOmpopenapi",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKOmpopenapi",
            exclude: ["Sources/JDCloudSDKOmpopenapi/JDCloudSDKOmpopenapi_Info.plist","Sources/JDCloudSDKOmpopenapi/JDCloudSDKOmpopenapi.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKDdos",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKDdos",
            exclude: ["Sources/JDCloudSDKDdos/JDCloudSDKDdos_Info.plist","Sources/JDCloudSDKDdos/JDCloudSDKDdos.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKVod",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKVod",
            exclude: ["Sources/JDCloudSDKVod/JDCloudSDKVod_Info.plist","Sources/JDCloudSDKVod/JDCloudSDKVod.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKDatastar",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKDatastar",
            exclude: ["Sources/JDCloudSDKDatastar/JDCloudSDKDatastar_Info.plist","Sources/JDCloudSDKDatastar/JDCloudSDKDatastar.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKKms",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKKms",
            exclude: ["Sources/JDCloudSDKKms/JDCloudSDKKms_Info.plist","Sources/JDCloudSDKKms/JDCloudSDKKms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOssbiz",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOssbiz",
            exclude: ["Sources/JDCloudSDKOssbiz/JDCloudSDKOssbiz_Info.plist","Sources/JDCloudSDKOssbiz/JDCloudSDKOssbiz.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKUcapi",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKUcapi",
            exclude: ["Sources/JDCloudSDKUcapi/JDCloudSDKUcapi_Info.plist","Sources/JDCloudSDKUcapi/JDCloudSDKUcapi.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOssopenapi",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOssopenapi",
            exclude: ["Sources/JDCloudSDKOssopenapi/JDCloudSDKOssopenapi_Info.plist","Sources/JDCloudSDKOssopenapi/JDCloudSDKOssopenapi.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKOms",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKOms",
            exclude: ["Sources/JDCloudSDKOms/JDCloudSDKOms_Info.plist","Sources/JDCloudSDKOms/JDCloudSDKOms.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKJcq",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKJcq",
            exclude: ["Sources/JDCloudSDKJcq/JDCloudSDKJcq_Info.plist","Sources/JDCloudSDKJcq/JDCloudSDKJcq.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKResourcetag",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKResourcetag",
            exclude: ["Sources/JDCloudSDKResourcetag/JDCloudSDKResourcetag_Info.plist","Sources/JDCloudSDKResourcetag/JDCloudSDKResourcetag.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKIas",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKIas",
            exclude: ["Sources/JDCloudSDKIas/JDCloudSDKIas_Info.plist","Sources/JDCloudSDKIas/JDCloudSDKIas.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKBaseanti",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKBaseanti",
            exclude: ["Sources/JDCloudSDKBaseanti/JDCloudSDKBaseanti_Info.plist","Sources/JDCloudSDKBaseanti/JDCloudSDKBaseanti.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKArk",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKArk",
            exclude: ["Sources/JDCloudSDKArk/JDCloudSDKArk_Info.plist","Sources/JDCloudSDKArk/JDCloudSDKArk.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKMongodb",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKMongodb",
            exclude: ["Sources/JDCloudSDKMongodb/JDCloudSDKMongodb_Info.plist","Sources/JDCloudSDKMongodb/JDCloudSDKMongodb.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCostcenter",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCostcenter",
            exclude: ["Sources/JDCloudSDKCostcenter/JDCloudSDKCostcenter_Info.plist","Sources/JDCloudSDKCostcenter/JDCloudSDKCostcenter.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKBizrisk",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKBizrisk",
            exclude: ["Sources/JDCloudSDKBizrisk/JDCloudSDKBizrisk_Info.plist","Sources/JDCloudSDKBizrisk/JDCloudSDKBizrisk.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKEsgroup",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKEsgroup",
            exclude: ["Sources/JDCloudSDKEsgroup/JDCloudSDKEsgroup_Info.plist","Sources/JDCloudSDKEsgroup/JDCloudSDKEsgroup.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCharge",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCharge",
            exclude: ["Sources/JDCloudSDKCharge/JDCloudSDKCharge_Info.plist","Sources/JDCloudSDKCharge/JDCloudSDKCharge.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKCost",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCost",
            exclude: ["Sources/JDCloudSDKCost/JDCloudSDKCost_Info.plist","Sources/JDCloudSDKCost/JDCloudSDKCost.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKRenewal",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon",],
            path: "Sources/JDCloudSDKRenewal",
            exclude: ["Sources/JDCloudSDKRenewal/JDCloudSDKRenewal_Info.plist","Sources/JDCloudSDKRenewal/JDCloudSDKRenewal.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKYunding",
            dependencies: ["JDCloudSDKCore","JDCloudSDKYd2",],
            path: "Sources/JDCloudSDKYunding",
            exclude: ["Sources/JDCloudSDKYunding/JDCloudSDKYunding_Info.plist","Sources/JDCloudSDKYunding/JDCloudSDKYunding.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKVpcwaf",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKVpcwaf",
            exclude: ["Sources/JDCloudSDKVpcwaf/JDCloudSDKVpcwaf_Info.plist","Sources/JDCloudSDKVpcwaf/JDCloudSDKVpcwaf.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
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
            name: "JDCloudSDKCsa",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKCsa",
            exclude: ["Sources/JDCloudSDKCsa/JDCloudSDKCsa_Info.plist","Sources/JDCloudSDKCsa/JDCloudSDKCsa.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKBds",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCharge",],
            path: "Sources/JDCloudSDKBds",
            exclude: ["Sources/JDCloudSDKBds/JDCloudSDKBds_Info.plist","Sources/JDCloudSDKBds/JDCloudSDKBds.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKPartner",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKPartner",
            exclude: ["Sources/JDCloudSDKPartner/JDCloudSDKPartner_Info.plist","Sources/JDCloudSDKPartner/JDCloudSDKPartner.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKHips",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKHips",
            exclude: ["Sources/JDCloudSDKHips/JDCloudSDKHips_Info.plist","Sources/JDCloudSDKHips/JDCloudSDKHips.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKLb",
            dependencies: ["JDCloudSDKCore","JDCloudSDKCommon","JDCloudSDKCharge","JDCloudSDKVpc",],
            path: "Sources/JDCloudSDKLb",
            exclude: ["Sources/JDCloudSDKLb/JDCloudSDKLb_Info.plist","Sources/JDCloudSDKLb/JDCloudSDKLb.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKUser",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKUser",
            exclude: ["Sources/JDCloudSDKUser/JDCloudSDKUser_Info.plist","Sources/JDCloudSDKUser/JDCloudSDKUser.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .target(
            name: "JDCloudSDKTs",
            dependencies: ["JDCloudSDKCore",],
            path: "Sources/JDCloudSDKTs",
            exclude: ["Sources/JDCloudSDKTs/JDCloudSDKTs_Info.plist","Sources/JDCloudSDKTs/JDCloudSDKTs.h","Sources/ChangeLog.md","Sources/ChangeLog.txt"]),
        .testTarget(
            name: "JDCloudSDKSwiftTests",
            dependencies: ["JDCloudSDKVm","JDCloudSDKCore"],
            path: "Tests"),
    ]
)
