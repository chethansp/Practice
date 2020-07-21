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
}

print("test")

let a  = Test()
a.elements = ["2"]
print(a[0] ?? "nil object" )
