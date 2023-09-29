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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.2.0-beta.32")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-1.2.0-beta.32.xcframework.zip",
			checksum: "34d4750739638dcd5d3ebf4245ebd94fec4b31a8b67306f9a4b9374a1f2e05c5"
		)
	]
)