//
//  ControlAnimationStack.swift
//  Project6
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

struct ControlAnimationStack: View {
    
    @State private var enabled = false
    
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .red : .blue)
        .foregroundStyle(.white)
        .animation(nil, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 30 : 60))
        .animation(.default, value: enabled)
        
    }
}

#Preview {
    ControlAnimationStack()
}
