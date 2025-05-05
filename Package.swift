// swift-tools-version:5.3

import PackageDescription

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
            targets: ["UnbluCallKitModule"])
    ],
    targets: [
        .binaryTarget(
            name: "UnbluCoreSDK",
            path: "UnbluCoreSDK.xcframework.zip"
        ),
        .binaryTarget(
            name: "UnbluFirebaseNotificationModule",
            path: "UnbluFirebaseNotificationModule.xcframework.zip"
        ),
        .binaryTarget(
            name: "UnbluOpenTokCallModule",
            path: "UnbluOpenTokCallModule.xcframework.zip"
        ),
        .binaryTarget(
            name: "UnbluLiveKitCallModule",
            path: "UnbluLiveKitCallModule.xcframework.zip"
        ),
        .binaryTarget(
            name: "UnbluMobileCoBrowsingModule",
            path: "UnbluMobileCoBrowsingModule.xcframework.zip"
        ),
        .binaryTarget(
            name: "UnbluCallKitModule",
            path: "UnbluCallKitModule.xcframework.zip"
        )
    ]
)
