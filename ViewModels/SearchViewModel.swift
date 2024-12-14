//
//  SearchViewModel.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//

// ViewModels/SearchViewModel.swift
class SearchViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var searchResults: [Station] = []
    @Published var recentSearches: [Station] = []
    
    private let dataService: DataService
    
    init(dataService: DataService = DataService()) {
        self.dataService = dataService
    }
    
    func search() {
        guard !searchText.isEmpty else {
            searchResults = []
            return
        }
        
        dataService.searchStations(query: searchText) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let stations):
                    self?.searchResults = stations
                case .failure(let error):
                    print("Hata: \(error.localizedDescription)")
                }
            }
        }
    }
}
