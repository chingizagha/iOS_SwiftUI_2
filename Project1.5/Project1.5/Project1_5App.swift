//
//  Project1_5App.swift
//  Project1.5
//
//  Created by Chingiz on 17.05.24.
//

import SwiftData
import SwiftUI

@main
struct Project1_5App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
