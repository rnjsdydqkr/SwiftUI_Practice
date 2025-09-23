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
        GalleryItem(color: .red, title: "title1111111111111111111111111"),
        GalleryItem(color: .blue, title: "title2"),
        GalleryItem(color: .gray, title: "title3"),
        GalleryItem(color: .green, title: "title4"),
        GalleryItem(color: .orange, title: "title5"),
        GalleryItem(color: .yellow, title: "title6"),
        GalleryItem(color: .pink, title: "title7")
    ]
    
    var itemSize = CGSize(width: 100, height: 100)
    var scrollViewSize = CGSize(width: 400, height: 300)
    
    var leadingPadding: CGFloat {
        scrollViewSize.width / 2 - itemSize.width / 2
    }
    
    var body: some View {
        VStack(spacing: -90) {
            makeGallery()
            makeGallery()
            makeGallery()
        }
    }
    
    func makeGallery() -> some View {
        GeometryReader { scrollGeo in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 50) {
                    ForEach(items, id: \.self) { item in
                        GeometryReader { geometry in
                            
                            ZStack {
                                Image(systemName: "trash")
                                    .resizable()
                                    .frame(width: itemSize.width, height: itemSize.height)
                                    .foregroundColor(item.color)
                                    .rotation3DEffect(.degrees(geometry.frame(in: .global).minX - leadingPadding - Double(scrollGeo.frame(in: .global).minX)) / 3, axis: (x: 0, y: -1, z: 0))
                                
                                VStack {
                                    Spacer()
                                    Text(item.title)
                                        .padding(.bottom, 20)
                                }
                            }
                            
                            
                            self.testFunc(geometry: geometry)
                        }.frame(width: itemSize.width, height: itemSize.height)
                    }
                }
                .padding(.vertical, 50)
                .padding(.leading, leadingPadding)
                .padding(.trailing, leadingPadding)
            }
            .background(.black.opacity(0.2))
        }
        .frame(width: scrollViewSize.width, height: scrollViewSize.height)
    }
    
    func testFunc(geometry: GeometryProxy) -> some View {
        print(geometry.frame(in: .global).minX)
        return Spacer()
    }
}

#Preview {
    ContentView()
}
