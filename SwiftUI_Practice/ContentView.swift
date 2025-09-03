//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello asdf asdf asdf \n\n\n\n\nasdf Picture")
            .foregroundColor(.white)
            .font(.largeTitle)
            .fixedSize()
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 10)
            .padding(.bottom, 10)
            .background(
                Image("2")
                    .resizable(capInsets: .init(top: 50, leading: 50, bottom: 50, trailing: 50), resizingMode: .stretch)
            )
            
    }
}

#Preview {
    ContentView()
}
