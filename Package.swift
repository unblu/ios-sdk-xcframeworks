// swift-tools-version:5.3

import PackageDescription

let version = "4.5.6"

let UnbluCoreSDK_CHECKSUM = "86eb5c60a88a2c9cef069b94589b728d8f09b0e354f9be6a17f8e1d17abea4b9"
let UnbluFirebaseNotificationModule_CHECKSUM = "674f350b812d782b640ae59b273790f8139655a4ffd25485401a71182e5012cf"
let UnbluOpenTokCallModule_CHECKSUM = "?"
let UnbluLiveKitCallModule_CHECKSUM = "?"
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
    dependencies: [
        .package(name: "WebRTC", url: "https://github.com/webrtc-sdk/Specs.git", .exact("104.5112.08"))
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
