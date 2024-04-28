//
//  AddView.swift
//  Project1.3
//
//  Created by Chingiz on 26.04.24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var description = ""
    
    var activities: Activities
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Title", text: $title)
                
                TextField("Description", text: $description)
            }
            .navigationTitle("Add new Activity")
            .toolbar{
                Button("Save") {
                    let item = Activity(title: title, description: description, count: 0)
                    activities.items.append(item)
                    dismiss()
                }
            }
        }
        
    }
}

#Preview {
    AddView(activities: Activities())
}
