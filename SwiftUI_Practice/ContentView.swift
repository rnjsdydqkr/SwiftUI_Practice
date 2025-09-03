//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hellow Hellow")
            .italic()
            .underline()
            .font(.title)
            .padding(.trailing, 10)
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.yellow)
            .cornerRadius(25)
            .padding(10)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue, lineWidth: 5)
            })
            .padding(10)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue, lineWidth: 5)
            })
    }
}

#Preview {
    ContentView()
}
