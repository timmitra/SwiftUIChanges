//
//  Bindable.swift
//  SwiftUIChanges
//
//  Created by Tim Mitra on 2023-10-10.
//

import SwiftUI
import SwiftData // includes Observable

@Observable
class Light {
    var isOn: Bool = false
}

// child view
struct Room: View {
    
    @Bindable var light: Light
    
    var body: some View {
        Toggle(isOn: $light.isOn) {
            EmptyView()
        }.fixedSize()
    }
}

// parent view
struct BindableView: View {
    
    @State private var light: Light = Light()
    
    var body: some View {
        VStack {
            // Room needs to send data to ContentView
            Room(light: light)
        }
        // fill the screen
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(light.isOn ? .yellow: .black)
            
    }
}

#Preview {
    BindableView()
}
