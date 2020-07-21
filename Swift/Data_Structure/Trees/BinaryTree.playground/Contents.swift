import UIKit

indirect enum BinaryTree {
    case node(BinaryTree, String, BinaryTree)
    case empty
}


extension BinaryTree: CustomStringConvertible {
    var description: String {
        
        switch self {
            
        case let .node(left, value, right):
            return "vaue: \(value), left = [\(left.description)], right = [\(right.description)]"
            
        case .empty:
            return ""
        }
    }
}

extension BinaryTree {
    func  count() -> Int {
        switch self {
        case let .node(left, _, right):
            return left.count() + 1 + right.count()
        default:
            return 0
        }
    }
}

extension BinaryTree {
    func preorderTraversal(process: (String)->()) {
        if case let .node(left, value, right) = self {
            left.preorderTraversal(process: process)
            process(value)
            right.preorderTraversal(process: process)
        }
    }
    
    func inOrderTraversal(process: (String)->()) {
        if case let .node(left, value, right) = self {
            process(value)
            left.inOrderTraversal(process: process)
            right.inOrderTraversal(process: process)
        }
    }
    
    func postOrderTraversal(process: (String)->()) {
        if case let .node(left, value, right) = self {
            left.postOrderTraversal(process: process)
            right.postOrderTraversal(process: process)
            process(value)
        }
    }
}


//(a+b)*(d+e)
let anode = BinaryTree.node(.empty, "a", .empty)
let bnode = BinaryTree.node(.empty, "b", .empty)
let abPlusNode = BinaryTree.node(anode, "+", bnode)


let dnode = BinaryTree.node(.empty, "d", .empty)
let enode = BinaryTree.node(.empty, "e", .empty)
let dePlusNode = BinaryTree.node(dnode, "+", enode)

let rootStarNode = BinaryTree.node(abPlusNode, "*", dePlusNode)

print(rootStarNode.description)
print(rootStarNode.count())

print("==================")

rootStarNode.preorderTraversal { (value) in
    print(value)
}

print("==================")

rootStarNode.postOrderTraversal { (value) in
    print(value)
}

print("==================")

rootStarNode.inOrderTraversal { (value) in
    print(value)
}
