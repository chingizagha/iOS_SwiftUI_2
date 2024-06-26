//
//  ContentView.swift
//  Project2
//
//  Created by Chingiz on 15.04.24.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Text("Tap the flag of")
                    .foregroundStyle(.white)
                    .font(.subheadline.weight(.heavy))
                
                Text(countries[correctAnswer])
                    .foregroundStyle(.white)
                    .font(.largeTitle.weight(.semibold))
            
            
                ForEach(0..<3) {number in
                    Button(action: {
                        flagTapped(number)
                    }, label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 5)
                    })
                }
            }
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button(action: {
                askQuestion()
            }, label: {
                Text("Continue")
            })
        } message: {
            Text("Your score is ???")
        }
        
    }
    
    func flagTapped(_ number: Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    
    
}

#Preview {
    ContentView()
}
