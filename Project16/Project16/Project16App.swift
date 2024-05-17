//
//  Project16App.swift
//  Project16
//
//  Created by Chingiz on 16.05.24.
//

import SwiftData
import SwiftUI

@main
struct Project16App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
