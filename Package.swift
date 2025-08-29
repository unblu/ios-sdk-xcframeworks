// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "9ac2f283c51daf3856ed0a1c78b3874d50377003859c57f0cc44f9b6f9f77638"
let UnbluFirebaseNotificationModule_CHECKSUM = "883a65158dbfc7ad5e54de674aa320c252344a4da8160b44d128c637e4cde97e"
let UnbluOpenTokCallModule_CHECKSUM = "46045e8a7edcdfd5a7ceba16e702e604597134171e40ece26ad64beff93555ba"
let UnbluLiveKitCallModule_CHECKSUM = "fdfa56d606094e4188abc25dbbaa63883178174c65355ab2c30e788316f0b122"
let UnbluMobileCoBrowsing_CHECKSUM = "3d82f65998299e0fb8044e89531e83a8b947d5c62828c5729625a7f4c0cddebe"
let UnbluCallKitModule_CHECKSUM = "1d0cb1e4bb48e81599aa5e7d473748af44c7a9bd1d8967dfb3492116a4219209"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "f59600538b0c77947a0ec68a4dd645cca402021b6c4c2a2cf5fc7c7b60a02fa9"




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
            targets: ["UnbluDocumentCoBrowsingModule"])
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
                )
    ]
)
