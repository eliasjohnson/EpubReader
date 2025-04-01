import Foundation

class EPUBParser {
    static func parse(url: URL) throws -> EPUBBook {
        // TODO: Implement EPUB parsing
        throw EPUBParserError.notImplemented
    }
}

struct EPUBBook {
    let metadata: EPUBMetadata
    let chapters: [EPUBChapter]
}

struct EPUBMetadata {
    let title: String
    let author: String
    let language: String
}

struct EPUBChapter {
    let title: String
    let content: String
    let position: Int
}

enum EPUBParserError: Error {
    case notImplemented
    case invalidFormat
    case fileNotFound
}