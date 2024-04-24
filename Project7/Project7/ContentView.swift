//
//  ContentView.swift
//  Project7
//
//  Created by Chingiz on 24.04.24.
//

import SwiftUI

@Observable
class Expenses {
    var items = [ExpenseItem]()
}

struct ContentView: View {
    
    @State private var expenses = Expenses()
    
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItem)
            }
            .navigationTitle("iExpense")
            .toolbar{
                Button("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    expenses.items.append(expense)
                }
            }
        }
    }
    
    func removeItem(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
