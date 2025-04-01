import SwiftUI

class LibraryViewModel: ObservableObject {
    @Published var books: [Book] = []
    
    init() {
        loadBooks()
    }
    
    func loadBooks() {
        // TODO: Implement loading books from storage
    }
    
    func importBook() {
        // TODO: Implement document picker to import EPUB files
    }
    
    func addBook(_ book: Book) {
        books.append(book)
        // TODO: Save book to storage
    }
}
