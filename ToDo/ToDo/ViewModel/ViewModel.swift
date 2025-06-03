//
//  ViewModel.swift
//  ToDo
//
//  Created by Dastan Sugirbay on 03.06.2025.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var tasks: [TaskModel] = []
    @Published var newTask = ""
    
    func addTask (task: String) {
        let newTask = TaskModel(title: task)
        tasks.append(newTask)
    }
    
    func isCompleted (task: TaskModel){
        if let index = tasks.firstIndex(where: { $0.id == task.id }){
            tasks[index].isCompleted.toggle()
        }
    }
}
