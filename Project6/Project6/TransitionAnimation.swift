//
//  TransitionAnimation.swift
//  Project6
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

struct TransitionAnimation: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation{
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    TransitionAnimation()
}
