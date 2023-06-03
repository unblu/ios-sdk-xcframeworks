// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "3223940e12203b58ec5566a4fd0629f4517ca1dd425cd41d3e103e803c7f8684"
let UnbluFirebaseNotificationModule_CHECKSUM = "8f4ef48b8f62d52007a3e1a934a2b918ee0a017b7daa37fc78621a5298049dbc"
let UnbluOpenTokCallModule_CHECKSUM = "ba80aab184ecd35995f7d3ead07369c7b6ae4d8abb8fda80833b951ec5d092d9"
let UnbluLiveKitCallModule_CHECKSUM = "8f5979674f3ef26e85cc9db36029033cac68e490ecb3c645982dba9fdb5aad8c"
let UnbluMobileCoBrowsing_CHECKSUM = "1077f39a6d9afe324c25586499d18a8c1432f1eef739bf9830caaf226d3be630"
let UnbluCallKitModule_CHECKSUM = "5ad6aed3245104b8d063e0e7f6916a592fa14e43bd3580745ddb14fc8c1c7736"




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
