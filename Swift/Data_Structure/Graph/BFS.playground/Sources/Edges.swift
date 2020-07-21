import Foundation


public class Edge: CustomStringConvertible {
    
    public var neighbor: Node
    
    public var description: String {
        return "\(neighbor)"
    }
    
    init(_ neighbor: Node) {
        self.neighbor = neighbor
    }
}

extension Edge: Equatable {
    static public func ==(lhs: Edge, rhs: Edge) -> Bool {
        return lhs.neighbor == rhs.neighbor
    }
}
