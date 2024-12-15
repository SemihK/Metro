import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Harita")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Ara")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favoriler")
                }
        }
    }
}
