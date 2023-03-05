// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "425e1196e3d0f702c6eb04ce77ed6f6e35b3d4a70666cf8f402b5f0911cd537d"
let UnbluFirebaseNotificationModule_CHECKSUM = "966002aebb78958369e4a8da94bfd041be654dcfbf10e646cf664635f0b4028b"
let UnbluOpenTokCallModule_CHECKSUM = "662284dac9d66969ad7cfad94a2b50c2eefab0953ab9ed45174465baac231492"
let UnbluLiveKitCallModule_CHECKSUM = "8387b6201e73d3c4d8bf54abb2a5b7e5b9697ca91e80f984c34fd34b5d29438b"
let UnbluMobileCoBrowsing_CHECKSUM = "e864332dac9363d8c9f67a28a4c3a03c11c4306d1d3016073fde99d3e5bfd65d"

let _FirebaseMessaging_CHECKSUM = "bc96bae1eb280ed982e3dfe86fc8875df1f460912adcbde4c63ab5f757e08296"
let _GoogleDataTransport_CHECKSUM = "e015fd64b3e005286e90f313dd78e3420e7110ff7c6fb196ad05d68c62e934d3"
let _FBLPromises_CHECKSUM = "416fb7cb6b4e20bf8113f89d01b59e26128866e3cdc1582cd622aba6894b030f"
let _FirebaseAnalytics_CHECKSUM = "a92417ac9a0b5dbb934567de3835ebb911ff0047d11a8ea6cbb18ef3f06013c4"
let _FirebaseAnalyticsSwift_CHECKSUM = "1e5a2e1b5f82d341bd8d0477bd24bfc4f0924d776a693137668c3034af6d41a3"
let _FirebaseCore_CHECKSUM = "56e6492c1e6c9398fa7958f9ec792f4cffb87aa364b3e310299523e0f9f9e109"
let _FirebaseCoreInternal_CHECKSUM = "4352d9ea31240e2670157a763fb690c6cc74b9e1a37751123e8ac3ab84fd92b1"
let _FirebaseInstallations_CHECKSUM = "5680bb48975f56aa38a9492b8bbd93555da1ab6e5ab085af9d35b32ae3abe732"
let _GoogleAppMeasurement_CHECKSUM = "c33a2af6caa20c6cebe92b8ef9fe8bc3fec15383af72b4eb961f945ea2ebf4cb"
let _GoogleAppMeasurementIdentitySupport_CHECKSUM = "cc8d41f9cdc02ccab1cd0a7b1429604adb0f1568c381796ac1cfec90702fce4a"
let _GoogleUtilities_CHECKSUM = "7969289b41553f5ad7ff03b67e17516c89779b37375b45b48967d0c316a5cd80"
let _nanopb_CHECKSUM = "c4bab1c435e179cdf3a7a23f5741e50e3bb74f6d4649c6e7f781db7af2fa46e2"



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
            name: "UnbliLiveKitWebRtcProvider",
            targets: ["UnbluLiveKitCallModule"]),
        .library(
            name: "UnbluVonageWebRtcProvider",
            targets: ["UnbluOpenTokCallModule"]),
        .library(
          name: "FirebaseMessaging",
          targets: ["FirebaseMessagingOrigin"]
        )
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
            .target(
                  name: "Firebase",
                  publicHeadersPath: "./"
                ),
            .target(
                  name: "FirebaseMessagingOrigin",
                  dependencies: [
                    "Firebase",
                    "_FirebaseCore",
                    "_FirebaseCoreInternal",
                    "_FirebaseMessaging",
                    "_GoogleDataTransport"
                  ],
                  path: "Source/FirebaseMessaging"
                ),
           .binaryTarget(
              name: "_FirebaseMessaging",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseMessaging.xcframework.zip?raw=true",
              checksum: _FirebaseMessaging_CHECKSUM
            ),
            .binaryTarget(
              name: "_GoogleDataTransport",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_GoogleDataTransport.xcframework.zip?raw=true",
              checksum: _GoogleDataTransport_CHECKSUM
            ),
           .binaryTarget(
              name: "_FirebaseCore",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseCore.xcframework.zip?raw=true",
              checksum: _FirebaseCore_CHECKSUM
            ),
            .binaryTarget(
              name: "_FirebaseCoreInternal",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseCoreInternal.xcframework.zip?raw=true",
              checksum: _FirebaseCoreInternal_CHECKSUM
            )
    ]
)
