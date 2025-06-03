//
//  TasksView.swift
//  ToDo
//
//  Created by Dastan Sugirbay on 04.06.2025.
//

import SwiftUI

struct TasksView: View {
    
    var model: TaskModel
    let action: () -> ()
    
    var body: some View {
        HStack{
            
            model.isCompleted ? Text(model.title).strikethrough().foregroundColor(Color.black.opacity(0.5)) : Text(model.title)
     
            Spacer()
            
            Button(action: {
                action()
            }) {
                Image(systemName: model.isCompleted ? "checkmark.circle.fill" : "circle")
            }
        }
        .padding()
        .background(model.isCompleted ? Color.black.opacity(0.1) : Color.clear)
        .cornerRadius(10)
        .font(.headline)
        .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .padding(.vertical, 6)
    }
}

#Preview {
    List {
        TasksView(model: TaskModel(title: "Task 1", isCompleted: true)) {}
        TasksView(model: TaskModel(title: "Task 2", isCompleted: true)) {}
    }
    .listStyle(.plain)
}
