// Selected generic utility. This file is not the complete application source.
import Foundation

enum AtomicFileWriterError: LocalizedError {
    case unsafeDestination

    var errorDescription: String? { "写入目标不安全，操作已取消" }
}

enum AtomicFileWriter {
    static func write(_ data: Data, to destination: URL, fileManager: FileManager = .default) throws {
        let parent = destination.deletingLastPathComponent()
        if fileManager.fileExists(atPath: parent.path) {
            let values = try parent.resourceValues(forKeys: [.isDirectoryKey, .isSymbolicLinkKey])
            guard values.isDirectory == true, values.isSymbolicLink != true else {
                throw AtomicFileWriterError.unsafeDestination
            }
        } else {
            try fileManager.createDirectory(at: parent, withIntermediateDirectories: true)
            let values = try parent.resourceValues(forKeys: [.isDirectoryKey, .isSymbolicLinkKey])
            guard values.isDirectory == true, values.isSymbolicLink != true else {
                throw AtomicFileWriterError.unsafeDestination
            }
        }
        if fileManager.fileExists(atPath: destination.path) {
            let values = try destination.resourceValues(forKeys: [.isRegularFileKey, .isSymbolicLinkKey])
            guard values.isRegularFile == true, values.isSymbolicLink != true else {
                throw AtomicFileWriterError.unsafeDestination
            }
        }
        try data.write(to: destination, options: [.atomic])
        try fileManager.setAttributes([.posixPermissions: 0o600], ofItemAtPath: destination.path)
    }

    static func writeJSON<T: Encodable>(_ value: T, to destination: URL) throws {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys, .withoutEscapingSlashes]
        encoder.dateEncodingStrategy = .iso8601
        var data = try encoder.encode(value)
        data.append(0x0a)
        try write(data, to: destination)
    }
}
