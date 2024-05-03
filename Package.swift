// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXFilePicker",
	platforms: [.iOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXFilePicker",
			targets: ["GXFilePickerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-rc.22")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXFilePicker-2.0.0-rc.22.xcframework.zip",
			checksum: "6fc49cf01582015489d20687e4144049ef58c5c5ba1405e397009b5b6e48b4f8"
		)
	]
)