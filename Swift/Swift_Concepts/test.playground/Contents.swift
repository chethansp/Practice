import UIKit

class Test {
    var test: Int = 22
    var elements: [String] = []
    
    subscript(index: Int) -> String? {
        guard index < elements.count else {
            return nil
        }
        return elements[index]
    }
    
    subscript(elements: Int, angle: Int) -> String {
        return "chethan"
    }
    
    static subscript(element: Int) -> String {
        get {
            return "test"
        }
        set {
            print("Ok Setting \(newValue)")
        }
        
    }
}
var str = "Hello, playground"

print("test")

let a  = Test()
a.elements = ["2"]

a[1,2]

Test[4] = "Chethan"

print(a[0] ?? "nil object" )
