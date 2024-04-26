//
//  SettingsView.swift
//  Project1.2
//
//  Created by Chingiz on 26.04.24.
//

import SwiftUI

enum Settings {
    
    enum NumberOfQuestions: String, CaseIterable, Identifiable{
        var id: Self {self}
        
        case five = "5"
        case ten = "10"
        case twenty = "20"
    }
    

}

struct SettingsView: View {
    
    @State private var tablesUpTo = 2
    @State private var numberOfQuesitons = Settings.NumberOfQuestions.five
    
    var body: some View {
        NavigationStack {
            Form{
                Section(header: Text("Tables Up To").font(.headline)) {
                    Stepper(value: $tablesUpTo, in: 2...9) {
                        Text("\(tablesUpTo)")
                    }
                }
                
                Picker("Number of Questions", selection: $numberOfQuesitons) {
                    ForEach(Settings.NumberOfQuestions.allCases) { i in
                        Text(i.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            Spacer()
            
            VStack {
                Button(action: {
                    
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
            
            
            
            
            .navigationTitle("Settings")
            
            
        }
    }
}

#Preview {
    SettingsView()
}
