//
//  ToDoApp.swift
//  ToDo
//
//  Created by Dastan Sugirbay on 03.06.2025.
//

import SwiftUI

@main
struct ToDoApp: App {
    
    @StateObject var vm = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
