//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct GalleryItem: Hashable {
    var color: Color
    var title: String
}

struct ContentView: View {
    
    var items = [
        GalleryItem(color: .red, title: "title1"),
        GalleryItem(color: .blue, title: "title2"),
        GalleryItem(color: .gray, title: "title3"),
        GalleryItem(color: .green, title: "title4"),
        GalleryItem(color: .orange, title: "title5"),
        GalleryItem(color: .yellow, title: "title6"),
        GalleryItem(color: .pink, title: "title7")
    ]
    
    var itemSize = CGSize(width: 100, height: 100)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 50) {
                ForEach(items, id: \.self) { item in
                    GeometryReader { geometry in
                        Rectangle()
                            .frame(width: itemSize.width, height: itemSize.height)
                            .foregroundColor(item.color)
                            .rotation3DEffect(.degrees(geometry.frame(in: .global).minX) / 2, axis: (x: 0, y: -1, z: 0))
                        self.testFunc(geometry: geometry)
                    }.frame(width: itemSize.width, height: itemSize.height)
                }
            }
            .padding(.vertical, 50)
            .padding(.leading, 150)
        }
        
    }
    
    func testFunc(geometry: GeometryProxy) -> some View {
        print(geometry.frame(in: .global).minX)
        return Spacer()
    }
}

#Preview {
    ContentView()
}
