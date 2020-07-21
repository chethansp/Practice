import UIKit

struct Stack<Element> {
    
    var array: [Element] = [Element]()
    
    mutating func push(element: Element)  {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.first
    }
    
    func isEmpty() -> Bool {
        return array.count == 0 ? true : false
    }
    
    func printAll<T>(elements: [T]) {
        for i in elements {
            print("Element is \(i)")
        }
    }
}

var st = Stack<Int>()
st.push(element: 2)
st.push(element: 3)
st.push(element: 4)
st.pop()
st.pop()
st.isEmpty()

var stringStack = Stack<String>()
stringStack.push(element: "Chethan")
stringStack.push(element: "Chandan")
stringStack.pop()
stringStack.isEmpty()

let a = ["2", "4"]
stringStack.printAll(elements: a)
