import ProjectDescription

let project = Project(
    name: "SwiftKentbeckTDD",
    targets: [
        .target(
            name: "SwiftKentbeckTDD",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.SwiftKentbeckTDD",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["SwiftKentbeckTDD/Sources/**"],
            resources: ["SwiftKentbeckTDD/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SwiftKentbeckTDDTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SwiftKentbeckTDDTests",
            infoPlist: .default,
            sources: ["SwiftKentbeckTDD/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SwiftKentbeckTDD")]
        ),
    ]
)
