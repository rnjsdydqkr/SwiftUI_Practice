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
            Image("1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            VStack {
                Spacer()
                Text("Hello Picture")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .offset(x: 90, y: 0)
            }
        }
            
    }
}

#Preview {
    ContentView()
}
