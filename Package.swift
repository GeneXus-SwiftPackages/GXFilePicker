// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXFilePicker",
	platforms: [.iOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXFilePicker",
			targets: ["GXFilePickerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-rc.8")
	],
	targets: [
		.target(name: "GXFilePickerWrapper",
				dependencies: [
					"GXFilePicker",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXFilePicker",
			url: "https://pkgs.genexus.dev/iOS/preview/GXFilePicker-3.0.0-rc.8.xcframework.zip",
			checksum: "214c5f934f1efd4a35aed19f9dea83ee67254eaa1ceb2af8b583ab71fd9fb772"
		)
	]
)