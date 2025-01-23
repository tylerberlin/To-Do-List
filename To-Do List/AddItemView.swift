//
//  AddItemView.swift
//  To-Do List
//
//  Created by Tyler Berlin on 1/23/25.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    static let priorities = ["High", "Medium", "Low"]
    @ObservedObject var toDoList: ToDoList
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    var body: some View {
        NavigationView{
            Form {
                Picker("Priority", selection: $priority) {
                    ForEach(Self.priorities, id: \.self) { priority in
                        Text(priority)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    AddItemView(toDoList: ToDoList())
}
