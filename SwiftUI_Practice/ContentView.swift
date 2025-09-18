//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let startDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())
        
        let endDate = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        
        return startDate!...endDate!
    }
    
    var body: some View {
        DatePicker(selection: $selectedDate, in: dateClosedRange) {
            Text("Select Date")
        }
        .labelsHidden()
    }
}

#Preview {
    ContentView()
}
