//
//  DataService.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//

// Services/DataService.swift
class DataService {
    func fetchMetroLines(completion: @escaping (Result<[MetroLine], Error>) -> Void) {
        // API çağrısı veya local JSON okuma işlemleri
    }
    
    func searchStations(query: String, completion: @escaping (Result<[Station], Error>) -> Void) {
        // İstasyon arama işlemleri
    }
}