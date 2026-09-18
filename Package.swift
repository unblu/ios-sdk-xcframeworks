// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "51ee48a659ed20fd82d9a8b1e52ca958d03dbec72abccd931843df0b1a9df65f"
let UnbluFirebaseNotificationModule_CHECKSUM = "4a027691f795f87dd9e8c901bbe4886b2c3258343944d1a86f62a77999c98b92"
let UnbluOpenTokCallModule_CHECKSUM = "2e29e77f6df642f76e6007ff53389921ab57fbf699de101709a6837f36e1e20a"
let UnbluLiveKitCallModule_CHECKSUM = "8d0d6ec30bb130257044c4fc859d5932ba54c6357a043dbad353105cad161e22"
let UnbluMobileCoBrowsing_CHECKSUM = "68dba82d445ee63a4d947806159dd129e240746294857b57eb3b33a9c149a076"
let UnbluCallKitModule_CHECKSUM = "931ee3e1a893cb8fe785e0a3999764d7c9b5792abf7c63b8d56963c069a0a1e3"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "ce9fca368915d7cb6540e2d7176b498f8ba83b336112d8b1886779b0957098b7"
let UnbluAppIntegrityModule_CHECKSUM = "3599bc4030c6956ffaecd7ce4351106352d2fe194414acaa950ea3a956fcbe60"




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
            targets: ["UnbluDocumentCoBrowsingModule"]),
         .library(
            name: "UnbluAppIntegrityModule",
            targets: ["UnbluAppIntegrityModule"])
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
                ),
             .binaryTarget(
                name: "UnbluAppIntegrityModule",
                url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluAppIntegrityModule.xcframework.zip?raw=true",
                checksum: UnbluAppIntegrityModule_CHECKSUM
                )
    ]
)
