import SwiftUI

struct LibraryView: View {
    @ObservedObject var viewModel: LibraryViewModel
    
    var body: some View {
        List(viewModel.books) { book in
            BookRow(book: book)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { viewModel.importBook() }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct BookRow: View {
    let book: Book
    
    var body: some View {
        NavigationLink(destination: ReaderView(book: book)) {
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
