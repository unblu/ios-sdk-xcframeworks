// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "099dab99d51fddaccf4cf5e64c798d5def5e1e0ecc501e88751ff27d1ec97cab"
let UnbluFirebaseNotificationModule_CHECKSUM = "04059635816b80db27e140e3e1f03ef4964cde84fd3e363ae47df05bbf665181"
let UnbluOpenTokCallModule_CHECKSUM = "f62be1d986bdddf5b721976c659cfb51a2b1b237dd095a54fedc1d1361a8f5cf"
let UnbluLiveKitCallModule_CHECKSUM = "409ed234a14d18afee91c5cb69c265e12c19265976929d4e762d07eb28988623"
let UnbluMobileCoBrowsing_CHECKSUM = "e0bdc90f336bc73ebd8b585f2800033f8b6a9f4a813c29165cf0f100c34046d1"
let UnbluCallKitModule_CHECKSUM = "9760251d1166ca9a87eedccb1b5cc0d67157e5d248a72040ecb3189a219230ff"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "8da6556ea0a72e293031b6d985d83be290910707b046b16ef9831ecb19d3c606"
let UnbluAppIntegrityModule_CHECKSUM = "f869c180ad9ad3898670176123f21697e25f42d4ae287d6da1afa4a086809348"




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
