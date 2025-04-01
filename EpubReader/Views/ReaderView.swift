import SwiftUI

struct ReaderView: View {
    let book: Book
    @StateObject private var viewModel: ReaderViewModel
    
    init(book: Book) {
        self.book = book
        _viewModel = StateObject(wrappedValue: ReaderViewModel(book: book))
    }
    
    var body: some View {
        VStack {
            if let content = viewModel.currentContent {
                ScrollView {
                    Text(content)
                        .padding()
                }
            } else {
                ProgressView()
            }
        }
        .navigationTitle(book.title)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { viewModel.toggleTableOfContents() }) {
                    Image(systemName: "list.bullet")
                }
            }
        }
        .sheet(isPresented: $viewModel.showingTableOfContents) {
            TableOfContentsView(chapters: viewModel.chapters) { chapter in
                viewModel.navigateToChapter(chapter)
            }
        }
    }
}
