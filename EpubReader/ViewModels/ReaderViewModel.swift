import Foundation

class ReaderViewModel: ObservableObject {
    let book: Book
    @Published var currentContent: String?
    @Published var chapters: [Chapter] = []
    @Published var showingTableOfContents = false
    
    init(book: Book) {
        self.book = book
        loadContent()
    }
    
    private func loadContent() {
        // TODO: Implement EPUB parsing and content loading
    }
    
    func toggleTableOfContents() {
        showingTableOfContents.toggle()
    }
    
    func navigateToChapter(_ chapter: Chapter) {
        // TODO: Implement chapter navigation
        showingTableOfContents = false
    }
}

struct Chapter: Identifiable {
    let id: UUID
    let title: String
    let position: Int
    
    init(id: UUID = UUID(), title: String, position: Int) {
        self.id = id
        self.title = title
        self.position = position
    }
}
