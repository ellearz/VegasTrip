//
//  ContentView.swift
//  VacationinVegas
//
//  Created by Elnura Arzybaeva on 23.08.24.
//

import SwiftUI
import Charts
struct SampleRating {
    let place: String
    let rating: Int

    static let rating: [SampleRating] = [
        SampleRating(place: "Bellagio", rating: 80),
        SampleRating(place: "Paris", rating: 75),
        SampleRating(place: "Treasury Island", rating: 33),
        SampleRating(place: "Excalibur", rating: 90)
    
    ]
}

struct VegasChart: View {
    var body: some View {
        Chart(SampleRating.rating, id :\.place ){
            rating in SectorMark(angle: .value( "Ratings", rating.rating), innerRadius:
                    .ratio(0.5),
                                 angularInset: 1)
                .cornerRadius(7)
                .foregroundStyle(by: .value("Place", rating.place))
}
        .padding()
        .frame(height: 500)
}
}

#Preview {
    VegasChart()
}
