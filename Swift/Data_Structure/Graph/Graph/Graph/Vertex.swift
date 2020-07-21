//
//  Vertex.swift
//  Graph
//
//  Created by chethan_sp on 21/7/20.
//  Copyright © 2020 chethan_sp. All rights reserved.
//

import Foundation

struct Vertex<T>: Equatable where T: Hashable {
    var data: T
    let index: Int
   
}

extension Vertex: CustomStringConvertible {
  public var description: String {
    return "\(index): \(data)"
  }
}

extension Vertex: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(data)
        hasher.combine(index)
    }
}


extension Vertex {
    static func == (lhs: Vertex<T>, rhs: Vertex<T>) -> Bool {
        guard lhs.index == rhs.index else {
            return false
        }
        guard lhs.data == rhs.data else {
            return false
        }
        return true
    }
}
