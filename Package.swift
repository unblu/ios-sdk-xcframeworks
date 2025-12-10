// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "6671c7ff299a545582f789e3b13028836d7cae8368a47caaa52f7436165ad861"
let UnbluFirebaseNotificationModule_CHECKSUM = "ce10db024cc936fa23e0756dc50b1d064ef0157da97ccf7b2f2cfadfc202ed9d"
let UnbluOpenTokCallModule_CHECKSUM = "b780522887ae1baf8f612c7661190b087543b65c17f19b708f8aa81a8ebb9fab"
let UnbluLiveKitCallModule_CHECKSUM = "c48d5c5b9279ca224ef9934a641b01824837da2c8798830ab3944300e581caa5"
let UnbluMobileCoBrowsing_CHECKSUM = "d0160c34eacc297dc9df3c84a2138822d7bf89c13069600ec654497e4f390049"
let UnbluCallKitModule_CHECKSUM = "a9fceada1f7c7c30473e13d1c2120b25a8c09be4016d00f3db40be20c2e122cd"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "a6f372ecf6401627a5bca3f8657fdc08ea4e456f31853c69589a5362682317b4"




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
