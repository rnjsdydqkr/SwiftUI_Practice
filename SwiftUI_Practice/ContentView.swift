//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct LocationInfo: Identifiable {
    var id = UUID()
    var city = ""
    var weather = ""
    
    var cityPresenter: some View {
        Text(city)
    }
    
    func cityPresenterWithIndex(_ index: Int) -> some View {
        Text("\(index) " + city)
    }
}

struct ContentView: View {
    
    var locations = [
        LocationInfo(city: "seoul", weather: "sunny"),
        LocationInfo(city: "Busan", weather: "cloudy"),
        LocationInfo(city: "C", weather: "cloudy"),
        LocationInfo(city: "D", weather: "sunny"),
        LocationInfo(city: "E", weather: "rain"),
        LocationInfo(city: "F", weather: "sunny"),
        LocationInfo(city: "G", weather: "cloudy"),
        LocationInfo(city: "H", weather: "rain")
    ]
    
    var body: some View {
        List {
//            ForEach(locations) { location in
//                location.cityPresenter
//            }
            
            ForEach(0..<locations.count, id: \.self) { index in
//                Text("\(index) " + self.locations[index].weather)
                self.locations[index].cityPresenterWithIndex(index)
            }
        }
    }
}

#Preview {
    ContentView()
}
