//
//  SearchView.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//

struct SearchView: View {
    @StateObject private var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.searchResults) { station in
                StationRowView(station: station)
            }
            .searchable(text: $viewModel.searchText)
            .onChange(of: viewModel.searchText) { _ in
                viewModel.search()
            }
            .navigationTitle("İstasyon Ara")
        }
    }
}