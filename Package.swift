// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/janismozumacs/KMMBridgeTest/come/tet/kmm/test/allshared-kmmbridge/1.0.1/allshared-kmmbridge-1.0.1.zip"
let remoteKotlinChecksum = "3779bca1e674439b47c421d6e33ebb5147faadcf91e0f620f5ab9293d896ca80"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)