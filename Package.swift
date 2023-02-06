// swift-tools-version:5.3

import PackageDescription

let version = "4.5.10"

let UnbluCoreSDK_CHECKSUM = "61cda7c8d2229d5496809374677820ef3f25cc1583bedbaefd6145c231342f31"
let UnbluFirebaseNotificationModule_CHECKSUM = "b1ae286fd2dbd2c6e61b17c5a3e0ca485b0bf91576e3a2ff6fc1ef6808a33d38"
let UnbluOpenTokCallModule_CHECKSUM = "1f58c55aeca4cdf2afebff65e7447fdf48556d0ca70c6833c749210476942a75"
let UnbluLiveKitCallModule_CHECKSUM = "329bb1b4ded5785dbba954ed19c9176b1dad230f3c6a4a6857126b35aca740de"
let UnbluMobileCoBrowsing_CHECKSUM = "6cbd154540b1f9e04dc17aea120cda5e26689c3b12ae467d23ae86fcfe627ec6"


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
