// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "cd702e95d64148be718f9545ee7a897751778cd6ca51f063ace43f431a1f3232"
let UnbluFirebaseNotificationModule_CHECKSUM = "bf17bc5037621d4f5878537533ff1d41d0702617498659f89888dd0282eb1118"
let UnbluOpenTokCallModule_CHECKSUM = "7e33144c8567c2b4b739cbb6021a315f406943ffc40257d6df5431faca0efec2"
let UnbluLiveKitCallModule_CHECKSUM = "144c8d7497e049ff8e9fbaeee3134360e210d0d1ddad06760f7eb33659662d78"
let UnbluMobileCoBrowsing_CHECKSUM = "d6b8618e6ce3cf9d52d5c6d21178d7279242d4ca36b3ac56db887d003cde3f88"
let UnbluCallKitModule_CHECKSUM = "6acb45dd358a13cbfa678597626d76c66b4c43b2a4a8b673a023eba14169d21f"




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
