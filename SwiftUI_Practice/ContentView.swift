//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by 박권용 on 9/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var width: CGFloat = 80
    @State private var height: CGFloat = 80
    
    var body: some View {
        VStack(alignment: .myAlignment) {
            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundStyle(.red)
                    .frame(width: width, height: height)
                Rectangle()
                    .foregroundStyle(.yellow)
                    .frame(width: width, height: height)
                    .alignmentGuide(.myAlignment) { vDms in
                        vDms[.leading]
                    }
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: width, height: height)
                Rectangle()
                    .foregroundStyle(.orange)
                    .frame(width: width, height: height)
            }
            
            Rectangle()
                .foregroundStyle(.gray)
                .frame(width: width, height: 20)
            Rectangle()
                .foregroundStyle(.gray)
                .frame(width: width, height: 20)
                .alignmentGuide(.myAlignment) { vDms in
                    vDms[.trailing]
                }
            Rectangle()
                .foregroundStyle(.gray)
                .frame(width: width, height: 20)
        }
    }
}

extension HorizontalAlignment {
    
    enum MyAlign: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.leading]
        }
    }
    
    static let myAlignment = HorizontalAlignment(MyAlign.self)
}

#Preview {
    ContentView()
}
