//
//  DetailView.swift
//  profile
//
//  Created by Dastan Sugirbay on 03.06.2025.
//
import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .padding(.bottom)
            
            Text(" Born in Almaty in 2006, Sugirbay Dastan is a talented software developer with a passion for creating innovative solutions.")
            
            Spacer()
        }
        .padding(20)
    }
}
