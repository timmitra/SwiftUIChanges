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

// light need  it's own view
struct LightView: View {
    
    @Bindable var light: Light
    
    var body: some View {
        Toggle(isOn: $light.isOn, label: {
            EmptyView()
        }).fixedSize()
    }
}

// child view
struct Room: View {
    
    @Environment(Light.self) private var light
    
    var body: some View {
        LightView(light: light)
    }
}

struct Cabin: View {
    
    @Environment(Light.self) private var light
    
    var body: some View {
        Image(systemName: light.isOn ? "lightbulb.fill" : "lightbulb")
            .font(.largeTitle)
    }
}

// parent view
struct BindableView: View {
    
    @Environment(Light.self) private var light // don't need init now
    
    var body: some View {
        VStack {
            // Room needs to send data to ContentView
            Room()
            Cabin()
        }
        // fill the screen
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(light.isOn ? .yellow: .white)
            
    }
}

#Preview {
    // inject the environment for the preview
    BindableView()
        .environment(Light())
}
