//
//  ToDoItemRowView.swift
//  ToDoey
//
//  Created by Isaac Frank on 3/3/23.
//

import SwiftUI

struct ToDoItemRowView: View {
    var icon: Image
    var name: String
    var color: Color
    @State private var count = 0
    
    var body: some View {
        HStack {
            icon
                .foregroundColor(color)
            Text(name)
            
            Spacer()
            
            Text("\(count)")
        }
    }
}

struct ToDoItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemRowView(icon: Image(systemName: "apps.iphone"), name: "App Team", color: .green)
    }
}
