//
//  ToDoListView.swift
//  ToDoey
//
//  Created by Isaac Frank on 3/1/23.
//

import SwiftUI

struct ToDoListView: View {
    @State var toDoList: ToDoList
    
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(toDoList.todos) { todo in
                        ToDoView(todo: todo)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Text(toDoList.name)
                            .foregroundColor(toDoList.color)
                        Spacer()
                        Text("\(toDoList.num)")
                            .foregroundColor(toDoList.color)
                    }
                    
                }
            }
        }
        
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(toDoList: ToDoList(color: .green, name: "App Team", todos: [ToDoItem(content: "Talk to Frank", isDone: true), ToDoItem(content: "App Team Work", isDone: false)], num: 2))
    }
}
