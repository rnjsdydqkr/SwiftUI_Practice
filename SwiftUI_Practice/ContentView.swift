//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelectedState = false
    
    var body: some View {
        VStack {
            Text("Hellow, world!")
            Text("isSelectedState : \(self.isSelectedState)")
            
            Button("Trash") {
                print("hoho")
                self.isSelectedState.toggle()
            }
            
            Button {
                print("hi")
            } label: {
                HStack {
                    Image(systemName: "pencil")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                    
                    Text("Share")
                        .foregroundStyle(.red)
                        .font(.largeTitle)
                    
                    Image(systemName: "pencil")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                }
            }

        }
    }
}

#Preview {
    ContentView()
}
