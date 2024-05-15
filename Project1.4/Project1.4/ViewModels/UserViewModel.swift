//
//  UserViewModel.swift
//  Project1.4
//
//  Created by Chingiz on 07.05.24.
//

import Foundation

@MainActor class UserViewModel: ObservableObject {
    @Published var users = [User]()
    
    func fetchData() async {
        guard let downloadedUsers: [User] = await WebService().downloadData(fromURL: "https://www.hackingwithswift.com/samples/friendface.json") else {return}
        users = downloadedUsers
    }
}
