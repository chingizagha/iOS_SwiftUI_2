//
//  ContentView02.swift
//  Project8
//
//  Created by Chingiz on 26.04.24.
//

import SwiftUI

struct ContentView02: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Tap Me") {
                Text("Detail View")
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView02()
}
