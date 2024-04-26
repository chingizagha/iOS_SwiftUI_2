//
//  ContentView03.swift
//  Project8
//
//  Created by Chingiz on 26.04.24.
//

import SwiftUI

struct ContentView03: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
        GridItem(.adaptive(minimum: 80, maximum: 120)),
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout) {
                ForEach(0..<100) {
                    Text("\($0) item")
                }
            }
        }
    }
}

#Preview {
    ContentView03()
}
