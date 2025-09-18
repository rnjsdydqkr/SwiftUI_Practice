//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedDate = Date()
    
    var presentDateStyle: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 MM월 dd일 HH:mm:ss"
        return formatter.string(from: selectedDate)
    }
    
    var body: some View {
        
        VStack {
            DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                .labelsHidden()
            
            Text("\(presentDateStyle)")
            Text("\(selectedDate.timeIntervalSince1970)")
        }

    }
}

#Preview {
    ContentView()
}
