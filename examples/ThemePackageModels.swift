// Selected public reference model. This file is not the complete application source.
import Foundation

struct ThemePackageImageResourceV1: Codable, Equatable, Sendable {
    var path: String
    var pixelWidth: Int
    var pixelHeight: Int
    var byteSize: Int
    var sha256: String
}

struct ThemePackageManifestV1: Codable, Equatable, Sendable {
    static let currentManifestVersion = 1
    static let currentEngineVersion = 4

    var manifestVersion: Int = Self.currentManifestVersion
    var packageID: String
    var themeID: UUID
    var packageVersion: Int
    var minimumEngineVersion: Int
    var localizedNames: [String: String]
    var author: String
    var license: String
    var rights: String
    var homeImage: ThemePackageImageResourceV1
    var taskImage: ThemePackageImageResourceV1
    var previewImage: ThemePackageImageResourceV1
    var appearance: AppearanceMode
    var palette: PaletteSettings
    var safeArea: SafeAreaMode
    var home: SceneTuning
    var task: SceneTuning
    var taskMode: TaskDisplayMode

    var displayName: String {
        localizedNames["zh-Hans"]
            ?? localizedNames["zh"]
            ?? localizedNames["en"]
            ?? localizedNames.values.sorted().first
            ?? packageID
    }
}

struct ThemeCatalogPackageV1: Codable, Equatable, Sendable {
    var packageID: String
    var packageVersion: Int
    var minimumEngineVersion: Int
    var maximumEngineVersion: Int?
    var manifestURL: URL
    var previewURL: URL
    var downloadURL: URL
    var packageSHA256: String
}

/// The signature covers the canonical JSON form of every field except
/// `signature`. Catalog transport and verification are implemented by the
/// future store client; defining the wire model now keeps packages stable.
struct ThemeCatalogV1: Codable, Equatable, Sendable {
    static let currentCatalogVersion = 1

    var catalogVersion: Int = Self.currentCatalogVersion
    var generatedAt: Date
    var signingKeyID: String
    var packages: [ThemeCatalogPackageV1]
    var signature: String
}
