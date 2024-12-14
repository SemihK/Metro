//
//  MapView.swift
//  Metro
//
//  Created by semihkesgin on 15.12.2024.
//


struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        ZStack {
            // Metro haritası arka planı
            MetroMapBackground()
            
            // Metro hatları
            ForEach(viewModel.metroLines) { line in
                MetroLineView(line: line)
            }
            
            // İstasyonlar
            ForEach(viewModel.metroLines.flatMap(\.stations)) { station in
                StationView(station: station)
                    .onTapGesture {
                        viewModel.selectStation(station)
                    }
            }
        }
        .sheet(item: $viewModel.selectedStation) { station in
            StationDetailView(station: station)
        }
    }
}