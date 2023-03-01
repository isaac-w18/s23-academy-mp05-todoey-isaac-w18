//
//  ToDoView.swift
//  ToDoey
//
//  Created by Isaac Frank on 2/28/23.
//

import SwiftUI

struct ToDoView: View {
    @State var todo: ToDoItem
    
    var body: some View {
        HStack {
            Button {
                todo.isDone.toggle()
            } label: {
                if(todo.isDone) {
                    Image(systemName: "circle.fill")
                } else {
                    Image(systemName: "circle")
                }
            }
            Text(todo.content)
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView(todo: ToDoItem(content: "App Team Work", isDone: false))
    }
}
