import UIKit

protocol QueueDataStructure {
    associatedtype T where T: CustomStringConvertible
    func push(element: T)
    func pop() -> T?
}

class Queue<T: CustomStringConvertible>: QueueDataStructure {
    var items: [T] = []
    
    func push(element: T) {
        items.append(element)
    }
    
    func pop() -> T? {
        guard items.count > 0 else { return nil }
        return items.removeFirst()
    }
}

extension Queue: CustomDebugStringConvertible  {
    var debugDescription: String {
        if items.isEmpty {
            return "QUEUE IS EMPTY"
        }
        return items.reversed()
                    .map{ $0.description }
                    .joined(separator: "-->")
    }
}

let q = Queue<Int>()
q.push(element: 3)
print(q.debugDescription)
q.push(element: 10)
print(q.debugDescription)
q.push(element: 2)
print(q.debugDescription)
q.push(element: 6)
print(q.debugDescription)
q.pop()
print(q.debugDescription)
q.pop()
print(q.debugDescription)
q.push(element: 12)
print(q.debugDescription)
q.pop()
print(q.debugDescription)
q.pop()
print(q.debugDescription)
q.pop()
print(q.debugDescription)
q.pop()
print(q.debugDescription)
