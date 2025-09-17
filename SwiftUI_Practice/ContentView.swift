//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var str = "hello"
    
    var body: some View {
        VStack {
            
            TextField("placeholder TF", text: $str)
                .padding(20)
                .background(.black.opacity(0.2))
                .font(.largeTitle)
                .padding(20)
            
            Text(str)
            
            Button {
                self.str = "hi"
            } label: {
                Text("Click me")
            }
        }
    }
}

#Preview {
    ContentView()
}
