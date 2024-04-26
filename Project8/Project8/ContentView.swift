//
//  ContentView.swift
//  Project8
//
//  Created by Chingiz on 25.04.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0..<100) {
                    Text("\($0) item")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
