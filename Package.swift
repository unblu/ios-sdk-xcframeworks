// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "36a3658ec09677a269107283ca0bac3a049b29c6eeaf9cfb583f5237fd2a0762"
let UnbluFirebaseNotificationModule_CHECKSUM = "75311bff6c1ea75a7a655f80c58d71851f0e350adebb1cbaddb702bedf7c5860"
let UnbluOpenTokCallModule_CHECKSUM = "666369f0242cfe3a34ce4e415461e81dd47d927cf5c59ade8772bbe0e7322d2a"
let UnbluLiveKitCallModule_CHECKSUM = "bb15c81a7c1a7fa8806472fa79baf9b6d8495b6be6ee9d93e2711843ad2c7df8"
let UnbluMobileCoBrowsing_CHECKSUM = "4a3c14ea5444373c3f42805b40b9f3a348e5fef012ea9f0ef25f1f44db7d6d30"
let UnbluCallKitModule_CHECKSUM = "da40dfc790f2c4a9aa13dfc4f7d420f95bda2fcdacc33e4d1a319006794be40f"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "fb0a8a06fd4b5ee0ec9771474955efccd758b7e76939c1311564843f2948253b"
let UnbluAppIntegrityModule_CHECKSUM = "1c432b6593771021067c95f76a6eb98ce4c73f85085f0b9f3808bdd6d2fb02c1"




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
