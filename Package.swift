// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(name: "Segment", url: "https://github.com/segmentio/analytics-swift.git", from: "1.7.3"),
      .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .exact("10.29.0"))
      //.package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.29.0"),
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
              "Segment",
              .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk")
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
