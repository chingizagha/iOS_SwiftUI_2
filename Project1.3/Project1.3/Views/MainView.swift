//
//  MainView.swift
//  Project1.3
//
//  Created by Chingiz on 26.04.24.
//

import SwiftUI

@Observable
class Activities {
    var items = [Activity]() {
        didSet{
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decoded = try? JSONDecoder().decode([Activity].self, from: savedItems){
                items = decoded
                return
            }
        }
        items = []
    }
}

struct MainView: View {
    
    @State private var activities = Activities()
    
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(activities.items) { item in
                    HStack{
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            
                            Text(item.description)
                                .font(.subheadline)
                            
                            Text(String(item.count))
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
