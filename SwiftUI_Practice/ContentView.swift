//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button {
            print(("selected"))
        } label: {
            HStack {
                Image(systemName: "square.and.pencil")
                    .font(.largeTitle)
                Text("Edit")
                    .font(.largeTitle)
            }
        }
        .buttonStyle(MyCustomButton())
        
        Button {
            print("button 2")
        } label: {
            Text("hi")
        }
        .buttonStyle(MyCustomButton())

        
    }
}

struct MyCustomButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .foregroundStyle(.white)
        .padding(20)
        .background(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
        .scaleEffect(configuration.isPressed ? 0.8 : 1)
    }
}

#Preview {
    ContentView()
}
