//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progressValue: Float = 0
    
    var sliderRange: ClosedRange<Float> {
        return 0...100
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "minus")
                    .onTapGesture {
                        self.progressValue -= 1
                    }
                Slider(value: $progressValue, in: sliderRange)
                    .accentColor(.red)
                Image(systemName: "plus")
                    .onTapGesture {
                        self.progressValue += 1
                    }
            }
            .padding(30)
            
            Text("\(Int(progressValue))")
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
