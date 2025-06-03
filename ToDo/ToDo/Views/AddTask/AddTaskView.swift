//
//  AddTaskView.swift
//  ToDo
//
//  Created by Dastan Sugirbay on 03.06.2025.
//

import SwiftUI

struct AddTaskView: View {
    
    @EnvironmentObject var vm: ViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            TextField("Enter Your New Task", text: $vm.newTask)
                .font(.headline)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
            
            Button(action: {
                vm.addTask(task: vm.newTask)
                dismiss()
            }) {
                Text("Add Task")
                    .font(.headline)
                    .padding()
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Add Task")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                }
            }
        }
        .onAppear(){
            vm.newTask = ""
        }
    }
}

#Preview {
    NavigationView() {
        AddTaskView()
            .environmentObject(ViewModel())
    }
}
