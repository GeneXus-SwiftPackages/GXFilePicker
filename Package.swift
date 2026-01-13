// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXFilePicker",
	platforms: [.iOS("15.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXFilePicker",
			targets: ["GXFilePickerWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.1.0-beta.20")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXFilePicker-4.1.0-beta.20.xcframework.zip",
			checksum: "c33ff803e64ecc12012f4944896f02f98c5e964b0337e763ca321eae399b5806"
		)
	]
)