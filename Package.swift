// swift-tools-version:5.3

import PackageDescription

let version = "4.7.7"

let UnbluCoreSDK_CHECKSUM = "7a66f3ee48a12964f6c465ee5d6955e20e0ae8fd26013a3f4255587b6871332f"
let UnbluFirebaseNotificationModule_CHECKSUM = "4fda4ce3eb47a7739b3667ddcd7999e1b4ee744c37e41d841067e99a7899265e"
let UnbluOpenTokCallModule_CHECKSUM = "58f7cb02bac0a3aef1b5e13a6a5767e8815cea1cdada0e462441f6c99fd56efb"
let UnbluLiveKitCallModule_CHECKSUM = "0579bcb9612e0b94198f7b210ac7cbc2e4517f30ebf5d2a3a55ad8d7132404ae"
let UnbluMobileCoBrowsing_CHECKSUM = "f9d317af4436f373e4106c0d7936899165c4d2a8158254990b7aadd20cc91891"
let UnbluCallKitModule_CHECKSUM = "abc1654c27bc3c947ddea23a711a63de75014be185c0df3b749e1f749536ed99"




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
            name: "UnbluLiveKitWebRtcProvider",
            targets: ["UnbluLiveKitCallModule"]),
        .library(
            name: "UnbluVonageWebRtcProvider",
            targets: ["UnbluOpenTokCallModule"]),
         .library(
            name: "UnbluCallKitModule",
            targets: ["UnbluCallKitModule"])
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
                )
    ]
)
