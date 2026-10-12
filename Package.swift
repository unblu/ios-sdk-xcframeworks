// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "40f97463e9f1fc4645580924e5322f6ea92eb8b044ab7e41f645c4c58d0bcb8c"
let UnbluFirebaseNotificationModule_CHECKSUM = "7ce88391e89004dac7d99d84ac187fc6d7c664f08cdc924f50f4240090ca85b1"
let UnbluOpenTokCallModule_CHECKSUM = "b881c3800f9330f6de48dd8319c580aefa46a94de054aa8bf9340e18ff97ab0f"
let UnbluLiveKitCallModule_CHECKSUM = "33b9fa2a25ef9f044db42f9e41504da52257eeea62d44b833736e5cb1f1b5372"
let UnbluMobileCoBrowsing_CHECKSUM = "cd446615a8b03d978aa5a4eeb49b0a86dc78e637476048988ee81850ca68145e"
let UnbluCallKitModule_CHECKSUM = "a20afe39cd75e97912a657b3cad80e45bbcb9829e370decf4a507ced738ec6e7"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "8f12945aa7d4edf80deb67b834f5b2c04c1ed0501e87bc28ab9cacad43035c06"
let UnbluAppIntegrityModule_CHECKSUM = "40a08803db123f95b38eda91ea59cc912f29abab87cbf71d8b89a773fabf8cac"




let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK","UnbluMobileCoBrowsingModule"]),
        .library(
            name: "UnbluFirebaseNotificationModule",
            targets: ["UnbluFirebaseNotificationModule"]),        
        .library(
            name: "UnbluLiveKitWebRtcProvider",
            targets: ["UnbluLiveKitCallModule"]),
        .library(
            name: "UnbluVonageWebRtcProvider",
            targets: ["UnbluOpenTokCallModule"]),
         .library(
            name: "UnbluCallKitModule",
            targets: ["UnbluCallKitModule"]),
         .library(
            name: "UnbluDocumentCoBrowsingModule",
            targets: ["UnbluDocumentCoBrowsingModule"]),
         .library(
            name: "UnbluAppIntegrityModule",
            targets: ["UnbluAppIntegrityModule"])
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
                ),
             .binaryTarget(
                name: "UnbluCallKitModule",
                url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluCallKitModule.xcframework.zip?raw=true",
                checksum: UnbluCallKitModule_CHECKSUM
                ),
             .binaryTarget(
                name: "UnbluDocumentCoBrowsingModule",
                url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluDocumentCoBrowsingModule.xcframework.zip?raw=true",
                checksum: UnbluDocumentCoBrowsingModule_CHECKSUM
                ),
             .binaryTarget(
                name: "UnbluAppIntegrityModule",
                url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluAppIntegrityModule.xcframework.zip?raw=true",
                checksum: UnbluAppIntegrityModule_CHECKSUM
                )
    ]
)
