//
//  Route.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//

// Models/Route.swift
struct Route: Identifiable {
    let id = UUID()
    let stations: [Station]
    let duration: Int
    let transfers: [Station]
}