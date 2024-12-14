//
//  Station.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//

// Models/Station.swift
struct Station: Identifiable, Codable {
    let id: UUID
    let name: String
    let coordinates: Coordinates
    let isTransfer: Bool
    let connections: [String]
}
struct Coordinates: Codable {
    let latitude: Double
    let longitude: Double
}
