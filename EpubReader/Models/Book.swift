import Foundation

struct Book: Identifiable {
    let id: UUID
    let title: String
    let author: String
    let path: URL
    
    init(id: UUID = UUID(), title: String, author: String, path: URL) {
        self.id = id
        self.title = title
        self.author = author
        self.path = path
    }
}
