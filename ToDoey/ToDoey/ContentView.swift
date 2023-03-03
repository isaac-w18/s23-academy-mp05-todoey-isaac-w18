//
//  ContentView.swift
//  ToDoey
//
//  Created by Isaac Frank on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    let toDoLists = [ToDoListView(toDoList: ToDoList(color: .blue, name: "Reminders", todos: [])),
                    ToDoListView(toDoList: ToDoList(color: .red, name: "Homework", todos: [])),
                     ToDoListView(toDoList: ToDoList(color: .green, name: "App Team", todos: [])),
                     ToDoListView(toDoList: ToDoList(color: .purple, name: "ExstoBio", todos: []))]
    
    let icons = [Image(systemName: "calendar"), Image(systemName: "folder"), Image(systemName: "apps.iphone"), Image(systemName: "lightbulb.2")]
    
    var body: some View {
        
        NavigationStack {
            List {
                Section {
                    ForEach(0...3, id: \.self) { num in
                        let list = toDoLists[num]
                        NavigationLink {
                            toDoLists[num]
                        } label: {
                            ToDoItemRowView(icon: icons[num], name: list.toDoList.name, color: list.toDoList.color)
                        }
                    }
//                    NavigationLink {
//                        ToDoListView(toDoList: ToDoList(color: .green, name: "App Team", todos: [ToDoItem(content: "Talk to Frank", isDone: true), ToDoItem(content: "App Team Work", isDone: false)]))
//
//                    } label: {
//                        ToDoItemRowView(icon: Image(systemName: "apps.iphone"), name: "App Team", color: .green)
//                    }
                }
            }
            .navigationTitle("ToDoey")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
