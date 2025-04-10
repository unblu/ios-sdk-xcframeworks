// swift-tools-version:5.3

import PackageDescription

let version = "4.10.0"

let UnbluCoreSDK_CHECKSUM = "82fc333816a9f56a399ea24b6d1ad14ebeb70dd0d86aacff8e5ef9f4ae0aa8dc"
let UnbluFirebaseNotificationModule_CHECKSUM = "0af753649d500b12a298373e92f4ff55bc2db6aa0ff0a1dc7310d6abf3f0c587"
let UnbluOpenTokCallModule_CHECKSUM = "e9d1ad1fd2973b5adc3efc7ef71fc777ee87f1d97da2b22df3e1b1ad74e44fc2"
let UnbluLiveKitCallModule_CHECKSUM = "4b5c63894712487c3452bb780769aa03319c0a62d7ae93d3e101ca9a52d7ac4b"
let UnbluMobileCoBrowsing_CHECKSUM = "91f7b4c928aaaeac124a1cd0df64d2168eb4cf94b9dd69b11e9c82d38bdb8f68"
let UnbluCallKitModule_CHECKSUM = "f498a1bb7e5504fb4593c59cde929076b378b23cc2c9416c20f94a5ca6536935"




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
