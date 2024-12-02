// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "b8f4e13dc018fc254c3b3814dec7400b1dafd2b8663280d9f363e95d445d8042"
let UnbluFirebaseNotificationModule_CHECKSUM = "7b40b9bfab5dec026f93b34184e29058f4cd4867c9ef03ff589a6c713392133e"
let UnbluOpenTokCallModule_CHECKSUM = "07447d5d836b56fc5f83e2c789a8fd0f4e0f05c5249589575082e1cb36eabcda"
let UnbluLiveKitCallModule_CHECKSUM = "9a5e0b6287aa52ed3260b425b5dc54c7383ffb726eff0b948f40bb2d6b3cd8b1"
let UnbluMobileCoBrowsing_CHECKSUM = "9daa839d66422b39ac1738019e5e725e33cc67779e340e225a33749e25354f3b"
let UnbluCallKitModule_CHECKSUM = "03a0c511f066668497455c4c4e091bfd09faa2a25c4d8f63c31fece9fce3546e"




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
