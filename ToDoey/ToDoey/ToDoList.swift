//
//  ToDoList.swift
//  ToDoey
//
//  Created by Isaac Frank on 2/28/23.
//

import SwiftUI

struct ToDoList {
    var color: Color
    var name: String
    @State var todos: [ToDoItem]
    
    func getCount() -> Int {
        return todos.count
    }
}

