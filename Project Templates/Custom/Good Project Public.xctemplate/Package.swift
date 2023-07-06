//// swift-tools-version:5.7
//
//import PackageDescription
//
//let package = Package(
//    name: "GoodDependencies",
//    platforms: [.iOS(.v15)],
//    products: [
//        .library(
//            name: "GoodDependencies",
//            targets: ["GoodDependenciesTarget"]
//        ),
//    ],
//    dependencies: [
//        .package(url: "https://github.com/GoodRequest/GoodUIKit.git", .upToNextMajor(from: "1.0.0")),
//        .package(url: "https://github.com/GoodRequest/GoodExtensions-iOS.git", .upToNextMajor(from: "1.0.0")),
//        .package(url: "https://github.com/GoodRequest/GoodSwiftUI.git", from: "0.0.1"),
//        .package(url: "https://github.com/GoodRequest/GRProvider.git", .upToNextMajor(from: "0.1.3")),
//        .package(url: "https://github.com/GoodRequest/GoodReactor.git", .upToNextMajor(from: "1.0.0")),
//        .package(url: "https://github.com/GoodRequest/GoodPersistence.git", .upToNextMajor(from: "1.0.0")),
//        .package(url: "https://github.com/GoodRequest/GoodNetworking.git", .upToNextMajor(from: "1.0.0")),
//    ],
//    targets: [
//        .target(
//            name: "GoodDependenciesTarget",
//            dependencies: [
//                      .product(name: "GoodExtensions", package: "GoodExtensions-iOS"),
//                      .product(name: "GoodStructs", package: "GoodExtensions-iOS"),
//                      .product(name: "GoodCombineExtensions", package: "GoodExtensions-iOS"),
//                      .product(name: "GoodUIKit", package: "GoodUIKit"),
//                      .product(name: "GoodUIKitCombine", package: "GoodUIKit"),
//                      .product(name: "GoodNetworking", package: "GoodNetworking"),
//                      .product(name: "Mockable", package: "GoodNetworking"),
//                      .product(name: "GoodReactor", package: "GoodReactor"),
//                      .product(name: "GoodPersistence", package: "GoodPersistence"),
//                      .product(name: "GRProvider", package: "GRProvider")
//            ],
//            path: ""
//        )
//    ]
//)
//
