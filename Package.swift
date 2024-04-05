// swift-tools-version:5.3

import PackageDescription

let version = "4.7.11"

let UnbluCoreSDK_CHECKSUM = "b3d0c35b4dd73a8e45e0f0369454af0443195b307b695c0f23665f6a3db387e4"
let UnbluFirebaseNotificationModule_CHECKSUM = "d2a4d571dc33089dc4919ce7b54d444a72f5e68f47cd4cbbc89630b4cbaa01b6"
let UnbluOpenTokCallModule_CHECKSUM = "bb33ac36328133aab4084560b85e2a61fe28f76316da8dfd5c0f8b88e8bd2b17"
let UnbluLiveKitCallModule_CHECKSUM = "685dd1e8ee0d168be06e1998006f3d2b75a4353bde2921cea31b88fc304edc1c"
let UnbluMobileCoBrowsing_CHECKSUM = "61995bda1fe363fa571a1a6756f1ae6b6cf386a5906642a402c555e73079acbd"
let UnbluCallKitModule_CHECKSUM = "6e701abf83b3c81dd256f7169983f5efffd12b7a36b42e0b4d163fa8c966dc39"




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
