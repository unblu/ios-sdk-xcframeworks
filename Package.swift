// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "af6462a3d52ef8e9760037bddc4d4b003c82bf865379e37a4cfd0628c16b515b"
let UnbluFirebaseNotificationModule_CHECKSUM = "07d11f3c98373fdf64c793f43f6e7ea25b2b9f532567d6e2761c62862b675571"
let UnbluOpenTokCallModule_CHECKSUM = "a75d1ac05ff7270692b8538848877748d7d636452c11c6a27bd1eb12979bce29"
let UnbluLiveKitCallModule_CHECKSUM = "e8d4e2051a3dc1165e8c5786acba30350d3644e917f28138dd0e66244dfb7b82"
let UnbluMobileCoBrowsing_CHECKSUM = "f7c737e14a7e8a7c0c4d3aae441706b2f3acde7f169db01cc469f5b741ac72f4"
let UnbluCallKitModule_CHECKSUM = "5fa51e86d7c8a4b0b37dab08269692fe9de6cdcd20150f0796a50712fa3566f7"




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
