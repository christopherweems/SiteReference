// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "SiteReference",
    products: [
        .library(
            name: "SiteReference",
            targets: ["SiteReference"]),
    ],
    targets: [
        .target(
            name: "SiteReference",
            dependencies: []),
        
        
        /* Tests */
        
        .testTarget(
            name: "SiteReferenceTests",
            dependencies: ["SiteReference"]),
        
    ]
)
