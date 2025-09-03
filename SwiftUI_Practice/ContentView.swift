//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello, world!")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                    .padding(10)
                    .background(Color.green)
                    .padding(10)
                    .background(Color.brown)
                Text("wow")
                Text("wow")
                Text("wow")
            }
        }
    }
}

#Preview {
    ContentView()
}
