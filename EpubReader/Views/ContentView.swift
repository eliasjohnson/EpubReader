import SwiftUI

struct ContentView: View {
    @StateObject private var libraryViewModel = LibraryViewModel()
    
    var body: some View {
        NavigationView {
            LibraryView(viewModel: libraryViewModel)
                .navigationTitle("Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
