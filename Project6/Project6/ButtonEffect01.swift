//
//  ButtonEffect01.swift
//  Project6
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

struct ButtonEffect01: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear{
            animationAmount = 2
        }
    }
}

#Preview {
    ButtonEffect01()
}
