//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

class MyProfile: ObservableObject {
    @Published var name = ""
    @Published var age = 0
    
    func changeProfile() {
        self.name = "홍길동"
        self.age = 20
    }
}

struct ContentView: View {
    
    @ObservedObject var profile = MyProfile()
    
    var body: some View {
        VStack {
            Text("name: \(self.profile.name)")
            Text("age: \(self.profile.age)")
            
            Button {
                self.profile.changeProfile()
            } label: {
                Text("Click Me")
            }
        }
    }
}

#Preview {
    ContentView()
}
