//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "lightbulb.max.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundStyle(.yellow)
                .background(Color.blue)
            
            Image(systemName: "lightbulb.max.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundStyle(.yellow)
                .background(Color.blue)
        }
        
//        Image("1")
//            .resizable()
//            .mask {
//                ZStack {
//                    Circle()
//                        .offset(x: 0, y: -100)
//                    
//                    Circle()
//                        .frame(width: 120, height: 120)
//                        .offset(x: 80, y: 120)
//                    
//                    Circle()
//                        .frame(width: 80, height: 80)
//                        .offset(x: 120, y: 220)
//                }
//            }
    }
}

#Preview {
    ContentView()
}
