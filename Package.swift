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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230721123914")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-1.0.0-beta.20230721123914.xcframework.zip",
			checksum: "ed36ee2653005798962f7ff40400b2d46a20988523595878469f4e53679e21db"
		)
	]
)