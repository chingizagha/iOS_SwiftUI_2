//
//  Activity.swift
//  Project1.3
//
//  Created by Chingiz on 26.04.24.
//

import Foundation

struct Activity: Identifiable, Codable {
    var id = UUID()
    let title: String
    let description: String
    let count: Int
}
