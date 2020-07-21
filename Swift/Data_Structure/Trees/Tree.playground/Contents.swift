import UIKit

class TreeNode<T: Equatable> {
    var value: T
    var parent: TreeNode?
    var children: [TreeNode] = [TreeNode]()
    
    init(value: T) {
        self.value = value
    }
    
    func addChildren(node: TreeNode)  {
        children.append(node)
        node.parent = self
    }
}

extension TreeNode: CustomStringConvertible {
    var description: String {
        var s = "\(value)"
        if !children.isEmpty {
            s += "{" + children.map{$0.description}.joined(separator: ",") + "}"
        }
        return s
    }
}

//Search
extension TreeNode {
    
    func search(value: T) -> TreeNode? {
        if self.value == value {
            return self
        }
        
        for childNode in children {
            if let found = childNode.search(value: value) {
                return found
            }
        }
        return nil
    }
}


let tree = TreeNode<String>(value: "beverages")

let hot = TreeNode<String>(value: "hot")
let cold = TreeNode<String>(value: "cold")

let teaNode = TreeNode<String>(value: "tea")
let cofeeNode = TreeNode<String>(value: "coffe")
let greenTeaNode = TreeNode<String>(value: "greenTea")

let coke = TreeNode<String>(value: "coke")
let pepsi = TreeNode<String>(value: "pepsi")

tree.addChildren(node: hot)
tree.addChildren(node: cold)

hot.addChildren(node: teaNode)
hot.addChildren(node: cofeeNode)
hot.addChildren(node: greenTeaNode)

cold.addChildren(node: coke)
cold.addChildren(node: pepsi)

print(tree)

tree.search(value: "coke")
tree.search(value: "coke1")
