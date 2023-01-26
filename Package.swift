// swift-tools-version:5.3

import PackageDescription

let version = "4.5.12"

let UnbluCoreSDK_CHECKSUM = "324bfe837fb0ffa7473e7028610da786656022feaad2e31d5a6b14b110585ba1"
let UnbluFirebaseNotificationModule_CHECKSUM = "674f350b812d782b640ae59b273790f8139655a4ffd25485401a71182e5012cf"
let UnbluOpenTokCallModule_CHECKSUM = "ad56431bbeca76862d563bd583ed01bf403a296de0caa576fa0a7292d2ec7858"
let UnbluLiveKitCallModule_CHECKSUM = "ac430de40a846c6651d6589117e560bd4d39c487d8e4830194aa87501f9d10eb"
let UnbluMobileCoBrowsing_CHECKSUM = "bfe247f3bb268a724d3397e15f1f9808704527915dfe021c9f1c92c8c98a0a0f"


let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK","UnbluFirebaseNotificationModule","UnbluOpenTokCallModule","UnbluLiveKitCallModule","UnbluMobileCoBrowsingModule"]),
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
