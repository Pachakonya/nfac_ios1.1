//
//  Model.swift
//  ToDo
//
//  Created by Dastan Sugirbay on 03.06.2025.
//

import Foundation

struct TaskModel: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
