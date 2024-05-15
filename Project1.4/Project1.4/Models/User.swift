//
//  User.swift
//  Project1.4
//
//  Created by Chingiz on 07.05.24.
//

import Foundation

class User: Codable, Identifiable{
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: String
    var tags: [String]
    var friends: [Friend]
}

class Friend: Codable, Identifiable {
    var id: String
    var name: String
}
