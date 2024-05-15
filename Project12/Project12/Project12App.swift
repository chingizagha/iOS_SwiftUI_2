//
//  Project12App.swift
//  Project12
//
//  Created by Chingiz on 07.05.24.
//

import SwiftUI
import SwiftData

@main
struct Project12App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
