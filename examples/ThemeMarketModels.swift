// Selected public reference model. This file is not the complete application source.
import Foundation

enum ThemeMarketSource: Equatable, Sendable {
    case bundled
    case remote(server: URL)

    var installSource: String {
        switch self {
        case .bundled: "bundled-market"
        case let .remote(server): server.absoluteString
        }
    }
}

struct ThemeMarketItem: Identifiable, Equatable, Sendable {
    var id: String { manifest.packageID }

    var manifest: ThemePackageManifestV1
    var source: ThemeMarketSource
    var previewLocalURL: URL?
    var packageDirectory: URL?
    var remoteManifestURL: URL?
    var remoteDownloadURL: URL?
    var packageSHA256: String?

    var displayName: String { manifest.displayName }
    var packageID: String { manifest.packageID }
    var packageVersion: Int { manifest.packageVersion }
}
