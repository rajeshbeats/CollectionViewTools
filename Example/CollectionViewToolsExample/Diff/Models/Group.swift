//
//  Group.swift
//
//  Copyright © 2019 Rosberry. All rights reserved.
//

import Foundation

final class Group: Codable, Equatable, CustomStringConvertible {

    let id: Int
    var objects: [Object]
    var color: Color
    var title: String

    init(id: Int, objects: [Object], color: Color, title: String) {
        self.id = id
        self.objects = objects
        self.color = color
        self.title = title
    }

    static func == (lhs: Group, rhs: Group) -> Bool {
        return lhs.id == rhs.id
            && lhs.objects == rhs.objects
            && lhs.color == rhs.color
            && lhs.title == rhs.title
    }

    var description: String {
        return "id = \(id), objects = \(objects), title = \(title)"
    }
}