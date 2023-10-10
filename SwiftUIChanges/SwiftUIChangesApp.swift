//
//  SwiftUIChangesApp.swift
//  SwiftUIChanges
//
//  Created by Tim Mitra on 2023-10-10.
//

import SwiftUI

@main
struct SwiftUIChangesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(Light()) // global variable which conforms to Observable
        }
    }
}
