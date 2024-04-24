//
//  AnimationBinding.swift
//  Project6
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

struct AnimationBinding: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
        
        Spacer()
        
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(40)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    AnimationBinding()
}
