// swift-tools-version:5.3

import PackageDescription

let version = "4.5.6"

let UnbluCoreSDK_CHECKSUM = "45dc7e3441ea726549a95b47ddb7f16e2ca9fb678ff07d4fe1cae08ff1dea51a"
let UnbluFirebaseNotificationModule_CHECKSUM = "ebf0c811320a2266070599aaf79e299bec9797fbd4f7f28e508c6e5e04f9ab51"
let UnbluMobileCoBrowsing_CHECKSUM = "caa8cb46ff601218289e125d19b557dce28dd6b6a8c391c06f50b1d998b0a472"


let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK","UnbluFirebaseNotificationModule","UnbluMobileCoBrowsingModule"]),
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
            name: "UnbluMobileCoBrowsingModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/UnbluMobileCoBrowsingModule.xcframework.zip?raw=true",
            checksum: UnbluMobileCoBrowsing_CHECKSUM
            )
    ]
)
