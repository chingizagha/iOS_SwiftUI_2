//
//  Project11App.swift
//  Project11
//
//  Created by Chingiz on 28.04.24.
//

import SwiftUI
import SwiftData

@main
struct Project11App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
