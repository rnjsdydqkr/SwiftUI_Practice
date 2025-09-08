//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users = ["kim", "min", "lee", "su"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text("Head")
                    .font(.largeTitle)
                    .padding(20)
                ) {
                    ForEach(users, id: \.self) { name in
                        Text(name)
                    }
                    .onDelete(perform: deleteItem)
    //                .onDelete { indexSet in
    //                    if let findIndex = indexSet.first {
    //                        self.users.remove(at: findIndex)
    //                    }
    //                }
                    .onMove(perform: moveItem)
    //                .onMove { indexSet, destinationInt in
    //                    self.users.move(fromOffsets: indexSet, toOffset: destinationInt)
    //                }
                }
            }
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing:
                Button(action: {
                self.users.append("new name")
            }, label: {
                Image(systemName: "plus")
            })
            )
            .navigationBarTitle("navi title")
        }
    }
    func moveItem(idx: IndexSet, int: Int) {
        self.users.move(fromOffsets: idx, toOffset: int)
    }
    func deleteItem(idx: IndexSet) {
        if let hasIndex = idx.first {
            self.users.remove(at: hasIndex)
        }
    }
}

#Preview {
    ContentView()
}
