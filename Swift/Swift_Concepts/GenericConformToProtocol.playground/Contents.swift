import UIKit

protocol Stackable {
    associatedtype Element1
    associatedtype Element2
    
    var array: [Element1] { get set }
    func push(element: Element1)
    func pop() -> Element1?
    func allElement(elements: [Element2])
}

class Stack<Element, AnotherElement>: Stackable {
    typealias Element1 = Element
    typealias Element2 = AnotherElement
    
    var array: [Element] = [Element]()

    func push(element: Element) {
        self.array.append(element)
    }
    
    func pop() -> Element? {
        return self.array.first
    }
    
    func allElement(elements: [Element2]) {
        for ele in elements {
            print(ele)
        }
    }
}

let st = Stack<Any,Any>()
st.push(element: 2)
st.push(element: "22")
st.pop()

let b = ["cool","another"]
st.allElement(elements: b)
