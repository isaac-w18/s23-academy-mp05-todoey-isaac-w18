//
//  ToDoItem.swift
//  ToDoey
//
//  Created by Isaac Frank on 2/28/23.
//

import Foundation
import SwiftUI

struct ToDoItem: Identifiable {
    var id = UUID()
    var content: String
    var isDone: Bool
}
