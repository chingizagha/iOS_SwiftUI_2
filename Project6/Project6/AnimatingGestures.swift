//
//  AnimatingGestures.swift
//  Project6
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

struct AnimatingGestures: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture (
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.bouncy) {
                            dragAmount = .zero
                        }
                    }
            )
            //.animation(.bouncy, value: dragAmount)
    }
}

#Preview {
    AnimatingGestures()
}
