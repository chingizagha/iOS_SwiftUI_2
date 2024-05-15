//
//  ContentView.swift
//  Project1.4
//
//  Created by Chingiz on 07.05.24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = UserViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(vm.users) { user in
                    NavigationLink(value: user) {
                        
                    }

                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.headline)
                            
                            Text(user.email)
                                .foregroundStyle(.secondary)
                        
                    }
                }
            }
        }
        .onAppear(){
            if vm.users.isEmpty {
                Task {
                    await vm.fetchData()
                }
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}
