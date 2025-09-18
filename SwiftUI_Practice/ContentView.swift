//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        HStack {
            Text("Hello, World!")
            
            GeometryReader { proxy in
                VStack {
                    Text("Hello, World!")
                    Text("\(proxy.size.width)")
                    Text("\(proxy.frame(in: .global).minX)")
                }.position(x: proxy.size.width / 2, y: proxy.size.height / 2)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
