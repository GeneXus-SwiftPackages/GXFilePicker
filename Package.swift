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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.25")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-2.2.0-beta.25.xcframework.zip",
			checksum: "a0be2622b49c0641dd912fdc65e4ebcbef28611b171a8ffbfc5ba4b7a1e91afa"
		)
	]
)