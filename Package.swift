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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-1.0.0-beta+20230525135158.xcframework.zip",
			checksum: "1f98c17de943dd3d28498b0c06c14617eb69d4291367860de02600a4313c3f4f"
		)
	]
)