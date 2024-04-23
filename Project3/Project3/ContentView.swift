//
//  ContentView.swift
//  Project3
//
//  Created by Chingiz on 22.04.24.
//

import SwiftUI

struct ContentView: View {
    @State var images = ["🤚", "✊", "✌️"]
    @State var situation = ["win", "lose"]
    
    @State private var randomImages = Int.random(in: 0...2)
    @State private var randomSituation = Int.random(in: 0...1)
    
    @State private var score = 0
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                
                
                Text(images[randomImages])
                    .imageStyle()
                
                    .padding()
                
                
                VStack{
                    HStack {
                        ForEach(images.indices) { image in
                            Button(action: {
                                imageTapped(with: image)
                            }, label: {
                                Text(images[image])
                                    .imageStyle()
                            })
                        }
                    }
                    Text("How to \(situation[randomSituation]) game?")
                        .foregroundStyle(.white)
                }
                
            }
        }
    }
    
    func imageTapped(with num: Int) {
        if situation[randomSituation] == "win" {
            if num == randomImages {
                
            }
        }
    }
    
}


struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 90))
            .minimumScaleFactor(0.01)
            .aspectRatio(1, contentMode: .fit)
    }
}

extension View {
    func imageStyle() -> some View {
        modifier(ImageModifier())
    }
}

#Preview {
    ContentView()
}
