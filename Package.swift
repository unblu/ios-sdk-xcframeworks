// swift-tools-version:5.3

import PackageDescription

let version = "4.7.3"

let UnbluCoreSDK_CHECKSUM = "95e9b56845f7cc6a3f382be555678467beb4fe6bb9c13138166b2cdfb76a98bf"
let UnbluFirebaseNotificationModule_CHECKSUM = "c342c5ee4d2d7a1545519d2adfa79e74153377aeea0516513093fbd88b350b2b"
let UnbluOpenTokCallModule_CHECKSUM = "f31fcc2dfc5fa7776a6da5677b1cfae3e00362eacb143201756cbe35a101fc7a"
let UnbluLiveKitCallModule_CHECKSUM = "df2b109d95652dbc36ecc4d3ab4dbc15f482453e81823931bbe9b063b1fcaab5"
let UnbluMobileCoBrowsing_CHECKSUM = "da83fadff18d8078ddfe1e90d87752aae092b29f2e4be3ff2d5375c612ff6c92"
let UnbluCallKitModule_CHECKSUM = "1fcc44e2633844c54ee09d5b7b06e493d279f585929abb99c2801dbed5ba372f"




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
