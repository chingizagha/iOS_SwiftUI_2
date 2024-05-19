//
//  ContentView.swift
//  Project1.5
//
//  Created by Chingiz on 17.05.24.
//


import PhotosUI
import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query(sort: \Person.name) var people: [Person]
    
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    
    
    
    var body: some View {
        NavigationStack {
            List(people) { person in
                VStack(alignment: .leading) {
                    Text(person.name)
                        .font(.headline)
                }
            }
            .navigationTitle("People")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Image", systemImage: "photo") {
                        PhotosPicker(selection: $image)
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Person.self)
}
