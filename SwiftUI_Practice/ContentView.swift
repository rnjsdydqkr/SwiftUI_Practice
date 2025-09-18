//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack {
                Rectangle()
                    .foregroundStyle(.red)
                    .frame(height: proxy.size.height / 3)
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
            }
        }
        .frame(width: 300, height: 300)
        
    }
}

#Preview {
    ContentView()
}
