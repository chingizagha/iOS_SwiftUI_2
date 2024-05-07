//
//  ContentView.swift
//  Project11
//
//  Created by Chingiz on 28.04.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query(sort: \Book.title, order: .reverse) var books: [Book]
    
    @State private var showingAddScreen = false
    
    var body: some View {
        VStack {
            NavigationStack {
                List{
                    ForEach(books) { book in
                        NavigationLink(value: book) {
                            HStack {
                                EmojiRatingView(rating: book.rating)
                                    .font(.largeTitle)
                                
                                VStack(alignment: .leading) {
                                    Text(book.title)
                                        .font(.headline)
                                    
                                    Text(book.author)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                    .onDelete(perform: deleteBooks)
                }
                .navigationTitle("Bookworm")
                .navigationDestination(for: Book.self) { book in
                    DetailView(book: book)
                }
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add Book", systemImage: "plus") {
                            showingAddScreen.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen){
                    AddBookView()
                }
            }
        }
    }
    
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            let book = books[offset]
            modelContext.delete(book)
        }
    }
    
}

#Preview {
    ContentView()
}
