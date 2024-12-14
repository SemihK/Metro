//
//  MetroLine.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//

// Models/MetroLine.swift
struct MetroLine: Identifiable, Codable {
    let id: UUID
    let name: String
    let color: String // UIColor/Color doğrudan Codable olmadığı için string kullanıyoruz
    let stations: [Station]
}