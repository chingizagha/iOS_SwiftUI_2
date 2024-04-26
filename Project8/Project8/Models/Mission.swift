//
//  Mission.swift
//  Project8
//
//  Created by Chingiz on 26.04.24.
//

import Foundation

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    var displayName: String{
        "Apollo \(id)"
    }
    
    var image: String{
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String{
        return launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
