//
//  ContentView.swift
//  Project6
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        //.blur(radius: (animationAmount - 1) * 3)
        //.animation(.default, value: animationAmount)
        //.animation(.spring(duration: 1, bounce: 0.5), value: animationAmount)
        .animation(
            .easeInOut(duration: 2)
                .repeatCount(3, autoreverses: true),
            value: animationAmount
        )
    }
}

#Preview {
    ContentView()
}
