//
//  DetailView.swift
//  Project1.3
//
//  Created by Chingiz on 26.04.24.
//

import SwiftUI

struct DetailView: View {
    
    @State private var activity: Activity
    
    init(activity: Activity) {
        self.activity = activity
    }
    
    var body: some View {
        NavigationStack {
            Form{
                Text(activity.title)
                Text(activity.description)
            }
        }
        
    }
}

#Preview {
    DetailView(activity: Activity(title: "ss", description: "ss", count: 0))
}
