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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-1.0.0-beta+20230306135613.xcframework.zip",
			checksum: "bc14e7c700ac5146c99f3b9bf78d50db75dadfd2efa7b95547c56e103165d9c8"
		)
	]
)