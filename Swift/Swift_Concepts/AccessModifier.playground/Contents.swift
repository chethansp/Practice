import UIKit

struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
}

struct Test {
    private var num = 10
    var anotherNum: Int
    
    init() {
        self.anotherNum = 20
    }
}

let a = Test()

class TestClass {
    var val: Int
    init() {
        self.val = 0
    }
}

let tc = TestClass()


struct Variadic {
    
    var val1: Int
    
    init(val: Int...) {
        self.val1 = val[0]
    }
}

let b = Variadic(val: 2,4,5,6)

print(b.val1)
