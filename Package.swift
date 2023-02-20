// swift-tools-version:5.3

import PackageDescription

let version = "4.5.11"

let UnbluCoreSDK_CHECKSUM = "e63fccd558d32e1f1b0f06f2649b1968f92a7fb3ff6d741a298359da5ce7d0e9"
let UnbluFirebaseNotificationModule_CHECKSUM = "49213870e42c3a74da2e92dcd74355c424cbd44f3ab2177564048bb3bed0f189"
let UnbluOpenTokCallModule_CHECKSUM = "730cf82d79bcdf335084261ee9364f0c45ba011b5fb10aca1c377d50c2ffd627"
let UnbluLiveKitCallModule_CHECKSUM = "4596ecde131efd1c90491d36637ff068e2cef3b6783b1e69b4c4a2c985d24b37"
let UnbluMobileCoBrowsing_CHECKSUM = "bc708d1aedeaaf7167a92c1336426e84854350e5b270a912ebf77aa6c373fdaf"


let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK","UnbluFirebaseNotificationModule","UnbluMobileCoBrowsingModule"]),
        .library(
            name: "UnbliLiveKitWebRtcProvider",
            targets: ["UnbluLiveKitCallModule"]),
        .library(
            name: "UnbluVonageWebRtcProvider",
            targets: ["UnbluOpenTokCallModule"]),
    ],
    targets: [
        .binaryTarget(
            name: "UnbluCoreSDK",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluCoreSDK.xcframework.zip?raw=true",
            checksum: UnbluCoreSDK_CHECKSUM
            ),
        .binaryTarget(
            name: "UnbluFirebaseNotificationModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluFirebaseNotificationModule.xcframework.zip?raw=true",
            checksum: UnbluFirebaseNotificationModule_CHECKSUM
            ),
        .binaryTarget(
            name: "UnbluOpenTokCallModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluOpenTokCallModule.xcframework.zip?raw=true",
            checksum: UnbluOpenTokCallModule_CHECKSUM
            ),
        .binaryTarget(
            name: "UnbluLiveKitCallModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluLiveKitCallModule.xcframework.zip?raw=true",
            checksum: UnbluLiveKitCallModule_CHECKSUM
            ),
        .binaryTarget(
            name: "UnbluMobileCoBrowsingModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluMobileCoBrowsingModule.xcframework.zip?raw=true",
            checksum: UnbluMobileCoBrowsing_CHECKSUM
            )
    ]
)
