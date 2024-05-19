//
//  Person.swift
//  Project1.5
//
//  Created by Chingiz on 17.05.24.
//

import SwiftData
import Foundation

@Model
class Person {
    var name: String
    @Attribute(.externalStorage) var photo: Data
    
    init(name: String, photo: Data) {
        self.name = name
        self.photo = photo
    }
}
