//
//  ContentView.swift
//  profile
//
//  Created by Dastan Sugirbay on 02.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Sugirbay Dastan")
                    .font(.headline)
                
                HStack(spacing: 24) {
                    VStack {
                        Image(systemName: "calendar")
                        Text("19 y/o")
                    }
                    VStack {
                        Image(systemName: "location")
                        Text("Astana")
                    }
                    VStack {
                        Image(systemName: "person.3.fill")
                        Text("350 followers")
                    }
                }
            }
            .padding()
        
            NavigationLink("View Detail", destination: DetailView())
        }
    }
}

#Preview {
    ContentView()
}
