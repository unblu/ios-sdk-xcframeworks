// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "425e1196e3d0f702c6eb04ce77ed6f6e35b3d4a70666cf8f402b5f0911cd537d"
let UnbluFirebaseNotificationModule_CHECKSUM = "24cb63cc16589a22525ccc85a6fc788f653c822bb887a45ed3cc396ab22d800b"
let UnbluOpenTokCallModule_CHECKSUM = "662284dac9d66969ad7cfad94a2b50c2eefab0953ab9ed45174465baac231492"
let UnbluLiveKitCallModule_CHECKSUM = "8387b6201e73d3c4d8bf54abb2a5b7e5b9697ca91e80f984c34fd34b5d29438b"
let UnbluMobileCoBrowsing_CHECKSUM = "e864332dac9363d8c9f67a28a4c3a03c11c4306d1d3016073fde99d3e5bfd65d"
let FirebaseMessaging_CHECKSUM = "b4c37fb1bf66b2090d966b8d655980d55740725b8e95574fac51d15b586560c8"


let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK","UnbluFirebaseNotificationModule","UnbluMobileCoBrowsingModule","FirebaseMessaging"]),
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
            ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/FirebaseMessaging.xcframework.zip?raw=true",
            checksum: FirebaseMessaging_CHECKSUM
            )
    ]
)
