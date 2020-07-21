//
//  Edges.swift
//  Graph
//
//  Created by chethan_sp on 21/7/20.
//  Copyright © 2020 chethan_sp. All rights reserved.
//

import Foundation

struct Edge<T>: Equatable where T: Hashable {
    
    var from: Vertex<T>
    var to: Vertex<T>
    var weight: Double?

}

extension Edge: CustomStringConvertible {

  public var description: String {
    guard let unwrappedWeight = weight else {
      return "\(from.description) -> \(to.description)"
    }
    return "\(from.description) -(\(unwrappedWeight))-> \(to.description)"
  }

}

extension Edge: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(from.description)
        hasher.combine(to.description)
        hasher.combine(weight)
    }
}

extension Edge {
    static func == (lhs: Edge<T>, rhs: Edge<T>) -> Bool {
        
        guard lhs.from == rhs.from,
            lhs.to == rhs.to,
            lhs.weight == rhs.weight else {
                return false
        }
        return true
    }
}


