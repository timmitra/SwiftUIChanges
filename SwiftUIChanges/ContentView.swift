//
//  ContentView.swift
//  SwiftUIChanges
//
//  Created by Tim Mitra on 2023-10-10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            
            Toggle(isOn: $isOn, label: {
                Text("Light")
            })
            Text("\(count)")
                .font(.largeTitle)
            
            Button(isOn ? "ON": "OFF") {
                count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
