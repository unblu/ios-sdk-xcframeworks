// swift-tools-version:5.3

import PackageDescription

let version = "4.5.5"

let UnbluCoreSDK_CHECKSUM = "89131e09f351be18b84b2aa24c04070812ca26899bbc625931ce86371eb437fc"
let UnbluFirebaseNotificationModule_CHECKSUM = "409cb55429c4e61b30bba010e3f96f2a3fdbb0f64c4a3aa46404b9144d9f587e"
let UnbluCallModule_CHECKSUM = "dcba8246c85ed9424e0b4785914565f2c9ee96bfa248fb94cec09707cb13d878"
let UnbluMobileCoBrowsing_CHECKSUM = "c53a9470638830e3345fb997d4f916c303da9a9936fd8deef0a7a073f96f7cc6"


let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK","UnbluFirebaseNotificationModule","UnbluCallModule","UnbluMobileCoBrowsingModule"]),
    ],
    dependencies: [
        .package(name: "WebRTC", url: "https://github.com/webrtc-sdk/Specs.git", .exact("104.5112.08"))
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
            name: "UnbluCallModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluCallModule.xcframework.zip?raw=true",
            checksum: UnbluCallModule_CHECKSUM
            ),
        .binaryTarget(
            name: "UnbluMobileCoBrowsingModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluMobileCoBrowsingModule.xcframework.zip?raw=true",
            checksum: UnbluMobileCoBrowsing_CHECKSUM
            )
    ]
)
