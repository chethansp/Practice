import UIKit

protocol Storable {
    associatedtype StorableElement
    var storableObject: [StorableElement] { get }
}

protocol Stackable: Storable {
    associatedtype Element
    var item: [Element] { get set }
    func push(element: Element)
}


class MyStack<Element: Equatable, StorableElement: Equatable> : Stackable {
    typealias SE = StorableElement
    typealias E = Element
    
    var item: [E] = []
    var storableObject: [SE] = []

    func push(element: E) {
    }
}

extension MyStack where Element == StorableElement {
    func  save()  {
    }
}

//======================================


class Test {
    
}

protocol TestClassStack: Stackable where Element: Test {
    
}

class AnotherTest<Element: Test, StorableElement>: TestClassStack {
    typealias E = Element
    typealias SE = StorableElement
    
    var item: [E] = []
    var storableObject: [SE] = []
    
    func push(element: Element) {}
}


//=======================================


class Stack<T> {
    
    var array:[T] = []
    
    func push(element: inout T)  {
        array.append(element)
    }
    
    func  pop() -> T? {
        return nil
    }
}

extension Stack where T == Int {
    func countAll() -> Int {
        return self.array.count
    }
}

extension Stack where T: Equatable {
    static func isEqualHere(lhs: Stack<T>, rhs: Stack<T>) -> Bool {
        return true
    }
}

let integer = Stack<Int>()
integer.array = [1,2]
integer.countAll()

let str = Stack<String>()
str.array = ["2","3"]

Stack.isEqualHere(lhs: integer, rhs: integer)


