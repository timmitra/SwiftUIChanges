//
//  ContentView.swift
//  SwiftUIChanges
//
//  Created by Tim Mitra on 2023-10-10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            
            Button("Increment") {
                count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
