// swift-tools-version:5.3

import PackageDescription

let version = "main"

let UnbluCoreSDK_CHECKSUM = "425e1196e3d0f702c6eb04ce77ed6f6e35b3d4a70666cf8f402b5f0911cd537d"
let UnbluFirebaseNotificationModule_CHECKSUM = "24cb63cc16589a22525ccc85a6fc788f653c822bb887a45ed3cc396ab22d800b"
let UnbluOpenTokCallModule_CHECKSUM = "662284dac9d66969ad7cfad94a2b50c2eefab0953ab9ed45174465baac231492"
let UnbluLiveKitCallModule_CHECKSUM = "8387b6201e73d3c4d8bf54abb2a5b7e5b9697ca91e80f984c34fd34b5d29438b"
let UnbluMobileCoBrowsing_CHECKSUM = "e864332dac9363d8c9f67a28a4c3a03c11c4306d1d3016073fde99d3e5bfd65d"

let _FirebaseMessaging_CHECKSUM = "xxxx"
let _GoogleDataTransport_CHECKSUM = "xxxx"
let _FBLPromises_CHECKSUM = "xxxx"
let _FirebaseAnalytics_CHECKSUM = "xxxx"
let _FirebaseAnalyticsSwift_CHECKSUM = "xxxx"
let _FirebaseCore_CHECKSUM = "xxxx"
let _FirebaseCoreInternal_CHECKSUM = "xxxx"
let _FirebaseInstallations_CHECKSUM = "xxxx"
let _GoogleAppMeasurement_CHECKSUM = "xxxx"
let _GoogleAppMeasurementIdentitySupport_CHECKSUM = "xxxx"
let _GoogleUtilities_CHECKSUM = "xxxx"
let _nanopb_CHECKSUM = "xxxx"



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
