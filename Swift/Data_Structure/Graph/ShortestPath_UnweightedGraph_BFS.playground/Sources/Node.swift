import UIKit

public class Node: CustomStringConvertible {
    public var neighbors: [Edge]
    public var label: String
    public var distance: Int?
    public var isVisited: Bool
    
    init(_ label: String) {
        self.label = label
        self.neighbors = []
        self.isVisited = false
    }
    
    public var hasDistance: Bool {
        return distance != nil
    }
    
    public var description: String {
      if let distance = distance {
        return "Node(label: \(label), distance: \(distance))"
      }
      return "Node(label: \(label), distance: infinity)"
    }
}

extension Node: Equatable {
    public static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.label == rhs.label && lhs.neighbors == rhs.neighbors
    }
}
