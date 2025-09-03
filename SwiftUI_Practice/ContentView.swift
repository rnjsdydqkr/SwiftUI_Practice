//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            Color.clear
            Text("Hello Picture")
                .font(.largeTitle)
                .foregroundStyle(.black)
                .padding(.trailing, 10)
        }.background(
             Image("2")
                .resizable(capInsets: .init(top: 100, leading: 0, bottom: 0, trailing: 0), resizingMode: .stretch)
//                 .edgesIgnoringSafeArea(.all)
//                 .aspectRatio(contentMode: .fit)
        )
            
    }
}

#Preview {
    ContentView()
}
