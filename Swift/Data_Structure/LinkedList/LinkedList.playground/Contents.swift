import UIKit

protocol LinkedList {
    associatedtype T where T: Equatable
    func insertElement(element: T)
//    func deleteElement(element: T) -> T?
//    func findElement(element: T) -> Bool
//
//    func insertAsHead(element: T)
//    func removeLast()
    
    func printElement()
}


class List<Element: Equatable>: LinkedList {
   
    var head: Node<Element>?
    
    func insertElement(element: Element) {
        
        let node = Node(value: element)
        
        if self.head == nil {
            self.head = node
            return
        }
        
        //Traverse till end and append element
        var current = self.head
        while (current?.next != nil ) {
            current = current?.next
        }
        current?.next = node
    }
    
//    func deleteElement(element: Element) -> Element? {
//
//        var prevoius: Node<Element>?
//        var found = false
//
//        var current: Node<Element>?
//        if self.head?.value == element {
//            current = self.head
//            self.head = self.head?.next
//            return current?.value
//        }
//
//        current = self.head
//        while (current?.value != element && current?.next != nil) {
//            prevoius = current
//            current = current?.next
//            found = true
//        }
//
//        if found {
//            prevoius?.next = current?.next
//            return current?.value
//        }
//        return nil
//    }
//
//    func findElement(element: Element) -> Bool {
//
//        var current = self.head
//        while (current?.value != element && current?.next != nil) {
//            current = current?.next
//            break
//        }
//        return current?.value == element
//    }
//
//    func insertAsHead(element: Element) {
//
//        let node = Node(value: element)
//
//        if self.head == nil {
//            self.head = node
//        } else {
//            node.next = head
//            self.head = node
//        }
//    }
//
//    func removeLast() {
//
//        if self.head?.next == nil {
//            self.head = nil
//        }
//
//        var current = self.head
//        var prevous: Node<Element>?
//
//        while current?.next != nil {
//            prevous = current
//            current = current?.next
//        }
//        prevous?.next = nil
//    }
    
    func printElement() {
        
        print("=============== Printing =======")
        var current = self.head
        
        while (current?.next != nil ) {
            print(current?.value ?? "Missing")
            current = current?.next
        }
        print(current?.value ?? "Missing")
    }
}

class Node<Element: Equatable> {
    var value: Element
    var next: Node?
   
    init(value: Element) {
        self.value = value
    }
}

let list = List<Int>()
list.insertElement(element: 2)
list.insertElement(element: 3)
list.insertElement(element: 4)

list.printElement()

//list.deleteElement(element: 3)
//
//list.printElement()
//list.findElement(element: 2)
//
//list.insertAsHead(element: 1)
//list.printElement()
//
//list.removeLast()

//list.printElement()
