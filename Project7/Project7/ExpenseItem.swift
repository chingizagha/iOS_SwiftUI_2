//
//  ExpenseItem.swift
//  Project7
//
//  Created by Chingiz on 24.04.24.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
