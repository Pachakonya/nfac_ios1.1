//
//  TaskListView.swift
//  ToDo
//
//  Created by Dastan Sugirbay on 03.06.2025.
//

import SwiftUI

struct TaskListView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color.blue, Color.green],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack {
                    List {
                        ForEach(vm.tasks){ task in
                            TasksView(model: task){
                                vm.isCompleted(task: task)
                            }
                        }
                    }
                    .listStyle(.plain)
                }
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: AddTaskView()){
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                    }
                }
            }
        }
    }
}

#Preview {
    TaskListView()
        .environmentObject(ViewModel())
}
