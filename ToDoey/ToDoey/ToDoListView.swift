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
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Text(toDoList.name)
                            .foregroundColor(toDoList.color)
                            .font(.largeTitle)
                            .bold()


                        Text("("+"\(toDoList.getCount())"+")")
                            .foregroundColor(toDoList.color)
                            .font(.largeTitle)
                            .bold()
                    }

                }
            }
            newReminder(todos: $toDoList.todos)
            
        }
        
    }
}

struct newReminder: View {
    @Binding var todos: [ToDoItem]
    
    var body: some View {
        HStack {
            Button {
                print(todos.count)
                todos.append(ToDoItem(content: "Hello", isDone: false))
                print(todos.count)
            } label: {
                Image(systemName: "plus.circle.fill")
                Text("New Reminder")
            }
            Spacer()
        }
        .padding()
    }
}


struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(toDoList: ToDoList(color: .green, name: "App Team", todos: [ToDoItem(content: "Talk to Frank", isDone: true), ToDoItem(content: "App Team Work", isDone: false)]))
    }
}
