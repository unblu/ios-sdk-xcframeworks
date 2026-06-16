// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "3f4a8f51f1a9d5bc304e01bdc9b98b7264bb213b7cabc9e85cd0e0f4c7f9d783"
let UnbluFirebaseNotificationModule_CHECKSUM = "f9c58922244e1c0b6ff73f756ea1bfdaa28d5388ec01da4651d4754c67d0dde0"
let UnbluOpenTokCallModule_CHECKSUM = "f6d9cddd9209790acb7115fec47476a37e18f04ef3dd996ba5f618c3fc3e25e1"
let UnbluLiveKitCallModule_CHECKSUM = "05401547dbc2e48edc17ec1bb068037737e199d0534f6fe43fd23b2e51df17f5"
let UnbluMobileCoBrowsing_CHECKSUM = "a4864a009b23f064eefc13291576039c5d4fbb3fbb535a3145d9e72678480d59"
let UnbluCallKitModule_CHECKSUM = "331367f686b7adde88468b9428886c313306517e984d045292ad7dfedee1eeee"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "c5eb14667d555137aeed20eab41071d7f4894b68bea8d63cabbbf118f415c258"
let UnbluAppIntegrityModule_CHECKSUM = "8f4893e51524e628a17777775efd0730016af03060689189e4da94e8dfa17eee"




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
