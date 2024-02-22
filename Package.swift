// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXFilePicker",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXFilePicker",
			targets: ["GXFilePickerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.5.0-beta.7")
	],
	targets: [
		.target(name: "GXFilePickerWrapper",
				dependencies: [
					"GXFilePicker",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXFilePicker",
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-1.5.0-beta.7.xcframework.zip",
			checksum: "1f5db6659432bba282bb4d2ece9625b03409734518885fab75d86ff71ba98bf7"
		)
	]
)