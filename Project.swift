@preconcurrency import ProjectDescription

// 1. The Main App Target
let defaultApp = Target.target(
    name: "Architectures",
    destinations: [.iPhone],
    product: .app,
    bundleId: "com.magnificat.Architectures",
    deploymentTargets: .iOS("16.0"),
    infoPlist: .extendingDefault(
        with: [
            "UILaunchScreen": [
                "UIColorName": "",
                "UIImageName": "",
            ],
        ]
    ),
    sources: [
        .glob("Application/**/*.swift", excluding: ["Application/Tests/**"])
    ],
    resources: ["Application/Resources/**"],
    dependencies: []
)

// 2. The Unit Test Target (XCTest / Swift Testing)
let unitTests = Target.target(
    name: "ArchitecturesTests",
    destinations: [.iPhone],
    product: .unitTests,
    bundleId: "com.magnificat.ArchitecturesTests",
    deploymentTargets: .iOS("16.0"),
    infoPlist: .default,
    sources: ["Application/Tests/UnitTests/**"],
    dependencies: [
        .target(name: "Architectures") // Access app code via @testable import
    ]
)

// 3. The UI Test Target
let uiTests = Target.target(
    name: "ArchitecturesUITests",
    destinations: [.iPhone],
    product: .uiTests,
    bundleId: "com.magnificat.ArchitecturesUITests",
    deploymentTargets: .iOS("16.0"),
    infoPlist: .default,
    sources: ["Application/Tests/UITests/**"],
    dependencies: [
        .target(name: "Architectures")
    ]
)

let project = Project(
    name: "Architectures",
    targets: [defaultApp, unitTests, uiTests], // Added targets here
    resourceSynthesizers: [
        .assets(),
        .strings()
    ]
)