// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "425e1196e3d0f702c6eb04ce77ed6f6e35b3d4a70666cf8f402b5f0911cd537d"
let UnbluFirebaseNotificationModule_CHECKSUM = "24cb63cc16589a22525ccc85a6fc788f653c822bb887a45ed3cc396ab22d800b"
let UnbluOpenTokCallModule_CHECKSUM = "662284dac9d66969ad7cfad94a2b50c2eefab0953ab9ed45174465baac231492"
let UnbluLiveKitCallModule_CHECKSUM = "8387b6201e73d3c4d8bf54abb2a5b7e5b9697ca91e80f984c34fd34b5d29438b"
let UnbluMobileCoBrowsing_CHECKSUM = "e864332dac9363d8c9f67a28a4c3a03c11c4306d1d3016073fde99d3e5bfd65d"

let _FirebaseMessaging_CHECKSUM = "20e8e115c44f06cec693e05f362caae6ffd6bd014d5c4e57c29cb2cfc14e4d7c"
let _GoogleDataTransport_CHECKSUM = "e015fd64b3e005286e90f313dd78e3420e7110ff7c6fb196ad05d68c62e934d3"
let _FBLPromises_CHECKSUM = "cad38e476c3cf2b5e49960ff1452f25701e644f9d310d9e69af6940a0dac98cc"
let _FirebaseAnalytics_CHECKSUM = "98cb46a03a91095bd71455ffd15bed6f3d72c9e09ab66f26571e555e0a72e773"
let _FirebaseAnalyticsSwift_CHECKSUM = "12b53e82517f5a9ddcacc1855d6757aecc7c118b1f066aa953aa07b996dd4e67"
let _FirebaseCore_CHECKSUM = "335f98543d0728e34fd55d142d6f14b4d489e8c8f94608f5cf3899765666d6b7"
let _FirebaseCoreInternal_CHECKSUM = "398278dd8a1b73c3835f976b6d97ad3a378df6cae0e964f5defea1c7bbf26954"
let _FirebaseInstallations_CHECKSUM = "8ed30074abb698f34d2e7e60c86e7c74cd597bdf77b73bb42b230364008ad2ac"
let _GoogleAppMeasurement_CHECKSUM = "c35af1a48cf1d381509101fd99ed41144591897bb9e801b5b1c6ba2c77ea1f3a"
let _GoogleAppMeasurementIdentitySupport_CHECKSUM = "e1100752c4dc8957f6653c32d4b7a46c9e2e479082a938abb87f4aac16ef9986"
let _GoogleUtilities_CHECKSUM = "6fe204432580f398ea843838559cd7a8580ea6343c17ef3c6889664bf495cba6"
let _nanopb_CHECKSUM = "2d03d04d140c706a68fce2293cf4a2aad5bf20bfae8a7e19c6664fb6cc286e90"



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
        .library(
          name: "FirebaseMessaging",
          targets: ["FirebaseMessagingOrigin"]
        ),
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
                    "FirebaseAnalyticsOrigin",
                    "_FirebaseMessaging",
                    "_GoogleDataTransport"
                  ],
                  path: "firebase/FirebaseMessaging"
                ),


            .target(
                  name: "FirebaseAnalyticsOrigin",
                  dependencies: [
                    "Firebase",
                    "_FBLPromises",
                    "_FirebaseAnalytics",
                    "_FirebaseAnalyticsSwift",
                    "_FirebaseCore",
                    "_FirebaseCoreInternal",
                    "_FirebaseInstallations",
                    "_GoogleAppMeasurement",
                    "_GoogleAppMeasurementIdentitySupport",
                    "_GoogleUtilities",
                    "_nanopb"
                  ],
                  path: "firebase/FirebaseAnalytics"
            ),
  
           .binaryTarget(
              name: "_FirebaseMessaging",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseMessaging.xcframework.zip",
              checksum: _FirebaseMessaging_CHECKSUM
            ),
            .binaryTarget(
              name: "_GoogleDataTransport",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_GoogleDataTransport.xcframework.zip",
              checksum: _GoogleDataTransport_CHECKSUM
            ),
            .binaryTarget(
              name: "_FBLPromises",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FBLPromises.xcframework.zip",
              checksum: _FBLPromises_CHECKSUM
            ),
            .binaryTarget(
              name: "_FirebaseAnalytics",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseAnalytics.xcframework.zip",
              checksum: _FirebaseAnalytics_CHECKSUM
            ),
            .binaryTarget(
              name: "_FirebaseAnalyticsSwift",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseAnalyticsSwift.xcframework.zip",
              checksum: _FirebaseAnalyticsSwift_CHECKSUM
            ),
            .binaryTarget(
              name: "_FirebaseCore",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseCore.xcframework.zip",
              checksum: _FirebaseCore_CHECKSUM
            ),
             .binaryTarget(
              name: "_FirebaseCoreInternal",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseCoreInternal.xcframework.zip",
              checksum: _FirebaseCoreInternal_CHECKSUM
            ),
            .binaryTarget(
              name: "_FirebaseInstallations",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_FirebaseInstallations.xcframework.zip",
              checksum: _FirebaseInstallations_CHECKSUM
            ),
           .binaryTarget(
              name: "_GoogleAppMeasurement",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_GoogleAppMeasurement.xcframework.zip",
              checksum: _GoogleAppMeasurement_CHECKSUM
            ),
            .binaryTarget(
              name: "_GoogleAppMeasurementIdentitySupport",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_GoogleAppMeasurementIdentitySupport.xcframework.zip",
              checksum: _GoogleAppMeasurementIdentitySupport_CHECKSUM
            ),
           .binaryTarget(
              name: "_GoogleUtilities",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_GoogleUtilities.xcframework.zip",
              checksum: _GoogleUtilities_CHECKSUM
            ),
            .binaryTarget(
              name: "_nanopb",
              url: "https://github.com/unblu/ios-sdk-xcframeworks/blob/\(version)/firebase/_nanopb.xcframework.zip",
              checksum: _nanopb_CHECKSUM
            )
    ]
)
