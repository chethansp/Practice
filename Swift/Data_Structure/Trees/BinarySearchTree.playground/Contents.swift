import UIKit

class BinartSearchTree {
    var value: Int
    var parent: BinartSearchTree?
    var left: BinartSearchTree?
    var right: BinartSearchTree?
    
    init(value: Int) {
        self.value = value
    }
    
    var isRoot: Bool {
        return self.parent == nil
    }
    
    var isLeaf: Bool {
        return self.left == nil && self.right == nil
    }
    
    var isLeftChild: Bool {
        return parent?.left === self
    }
    
    var isRightChild: Bool {
        return parent?.right === self
    }
    
    var hasLeftChild: Bool {
        return self.left  != nil
    }
    
    var hasRightChild: Bool {
        return self.right  != nil
    }
    
    var hasAnyChild: Bool {
        return hasLeftChild || hasRightChild
    }
    
    var hasBothChild: Bool {
        return hasLeftChild && hasRightChild
    }
    
    var count: Int {
        return (left?.count ?? 0) + 1 + (right?.count ?? 0)
    }
}

extension BinartSearchTree {
    convenience init(array: [Int]) {
        precondition(array.count > 0)
        self.init(value: array.first!)
        for element in array.dropFirst() {
            insert(value: element)
        }
    }
}

//Insert
extension BinartSearchTree {
    func insert(value: Int)  {
        //left
        if value < self.value {
            if let left = left {
                left.insert(value: value)
            } else {
                left = BinartSearchTree(value: value)
                left?.parent = self
            }
        } else {
            //right
            if let right = right {
                right.insert(value: value)
            } else {
                right = BinartSearchTree(value: value)
                right?.parent = self
            }
        }
    }
}

//Search
extension BinartSearchTree {
    
    func search(value: Int) -> BinartSearchTree? {
        
        if value < self.value  {
            return self.left?.search(value)
        } else if value > self.value   {
            return self.right?.search(value)
        } else {
            return self
        }
    }
    
    func search(_ value: Int) -> BinartSearchTree? {
      var node: BinartSearchTree? = self
      while let n = node {
        if value < n.value {
          node = n.left
        } else if value > n.value {
          node = n.right
        } else {
          return node
        }
      }
      return nil
    }
}

//Traversing
extension BinartSearchTree {
    
    func inOrderTraverse(process: (Int)->()) {
        left?.inOrderTraverse(process: process)
        process(value)
        right?.inOrderTraverse(process: process)
    }
    
    func preOrderTraverse(process: (Int)->()) {
        process(value)
        left?.preOrderTraverse(process: process)
        right?.preOrderTraverse(process: process)
    }
    
    func postOrderTraverse(process: (Int)->()) {
        left?.postOrderTraverse(process: process)
        right?.postOrderTraverse(process: process)
        process(value)
    }
}

//Depth of the node
// number of edges from current node to the root node
extension BinartSearchTree {
    func depth() -> Int {
        var depth = 0
        var currentNode:BinartSearchTree?  = self
        while currentNode?.parent != nil {
            depth += 1
            currentNode = currentNode?.parent
        }
        return depth
    }
}

//Height of the node
//Height of the node is maxium number of edge between current node to leaf node
extension BinartSearchTree {
    func  height() -> Int {
        
        if isLeaf {
            return 0
        }
        var height = 0
        height = 1 + max(left?.height() ?? 0, right?.height() ?? 0)
        return height
    }
}

// minimum and maximum of node
extension BinartSearchTree {
    func maximum() -> BinartSearchTree {
        var node = self
        while let next = node.right {
            node = next
        }
        return node
    }
    
    func minimum() -> BinartSearchTree {
          var node = self
          while let next = node.left {
              node = next
          }
          return node
      }
}

//Predecessors and Successors
extension BinartSearchTree {
    func predecessors() -> BinartSearchTree? {
        
        if let left = left {
            return left.maximum()
        } else {
            var node = self
            while let parent = node.parent {
                if parent.value < value {
                    return parent
                }
                node = parent
            }
            return nil
        }
    }
    
    func successor() -> BinartSearchTree? {
          
          if let right = right {
              return right.minimum()
          } else {
              var node = self
              while let parent = node.parent {
                  if parent.value > value {
                      return parent
                  }
                  node = parent
              }
              return nil
          }
      }
}

// checking is Binary search tree
extension BinartSearchTree {
    
   public func isBST(minValue: Int, maxValue: Int) -> Bool {
      if value < minValue || value > maxValue { return false }
      let leftBST = left?.isBST(minValue: minValue, maxValue: value) ?? true
      let rightBST = right?.isBST(minValue: value, maxValue: maxValue) ?? true
      return leftBST && rightBST
    }
}

//Description
extension BinartSearchTree: CustomStringConvertible {
    public var description: String {
        var s = ""
        if let left = left {
            s += "(\(left.description)) <- "
        }
        s += "\(value)"
        if let right = right {
            s += " -> (\(right.description))"
        }
        return s
    }
}

let tree = BinartSearchTree(value: 7)
tree.insert(value: 2)
tree.insert(value: 5)
tree.insert(value: 10)
tree.insert(value: 9)
tree.insert(value: 1)
print(tree)

let tree2 = BinartSearchTree(array: [7,2,5,10,9,1])
print(tree2)

tree2.search(value: 10)
tree2.search(value: 11)

print("===========================")
tree2.inOrderTraverse { (value) in
    print(value)
}

print("===========================")
tree2.preOrderTraverse { (value) in
    print(value)
}

print("===========================")
tree2.postOrderTraverse { (value) in
    print(value)
}

print("===========================")
print("count of the node \(tree2.count)")


print("===========================")
if let node9 = tree2.search(value: 1) {
    node9.depth()   // returns 2
    print("The depth of the node is \(node9.depth())")
}

print("===========================")
if let root = tree2.search(value: 7), root.isRoot {
    root.height()
    print("The height of the tree from root is \(root.height())")
}

print("===========================")
if let root = tree2.search(value: 1) {
    root.height()
    print("The height of the node 1 is \(root.height())")
}


print("===========================")
if let root = tree2.search(value: 7) {
    print("The maximum node of 7 is  \(root.maximum())")
}

print("===========================")
if let root = tree2.search(value: 7) {
    print("The maximum node of 7 is  \(root.minimum())")
}

print("===========================")
if let root = tree2.search(value: 7) {
    print("The predecessors node of 7 is  \(root.predecessors())")
}

print("===========================")
if let root = tree2.search(value: 7) {
    print("The successor node of 7 is  \(root.successor())")
}

print("=====================")
print("The tree is BST  \(tree2.isBST)")

print("===========================")
if let root = tree2.search(value: 1) {
    root.insert(value: 100)
    print(tree2.description)
    print("The tree is BST  \(tree2.isBST(minValue: Int.min, maxValue: Int.max))")
}
