// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "25d0a9f6252ab100c1bf85050d897a070e9e835a9beeb85a982ee9f4f422f9e5"
let UnbluFirebaseNotificationModule_CHECKSUM = "73b444b0c351ba640ec1e02de0ab0eae6343c0a1349944c9f2afbc7aafbe6a29"
let UnbluOpenTokCallModule_CHECKSUM = "c3bbe039463a81809fd806ecb2c5e6ec138c68467c2d3767c806a6de8a669b7e"
let UnbluLiveKitCallModule_CHECKSUM = "b0c62896a4dc78913d9bef7629e82b0ca0231e699fb21444fd75c360793ad0ad"
let UnbluMobileCoBrowsing_CHECKSUM = "c77c555355baf2b02a0a2d0638b75c375cf645b37874a0bed0c0452f256987c2"
let UnbluCallKitModule_CHECKSUM = "30cde868287c7882b09d216d5e4542a18cef9c72548b11a36799c75ee1fddcdc"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "bd9105486797c4ea02b6ba8b9fdffcc94f920b08458fdc44eb71b6299a6787e2"




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
