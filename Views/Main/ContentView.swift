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

// Metro hattı için model
struct MetroLine: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let stations: [Station]
}

// İstasyon için model
struct Station: Identifiable {
    let id = UUID()
    let name: String
    let coordinates: CGPoint
    let isTransfer: Bool
    let connections: [String] // Bağlantılı hatlar
}

// Harita görünümü
struct MapView: View {
    @State private var scale: CGFloat = 1.0
    @State private var offset = CGSize.zero
    @State private var selectedLine: MetroLine?
    
    var body: some View {
        ZStack {
            // Metro haritası arka planı
            MetroMapBackground()
            
            // Metro hatları
            ForEach(metroLines) { line in
                MetroLineView(line: line)
            }
            
            // İstasyonlar
            ForEach(stations) { station in
                StationView(station: station)
            }
        }
        .gesture(MagnificationGesture()
            .onChanged { value in
                scale = value
            }
        )
        .gesture(DragGesture()
            .onChanged { value in
                offset = value.translation
            }
        )
    }
}

// Arama görünümü
struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                // Arama sonuçları
            }
            .searchable(text: $searchText)
            .navigationTitle("İstasyon Ara")
        }
    }
}
