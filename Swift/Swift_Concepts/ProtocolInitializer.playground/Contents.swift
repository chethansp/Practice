import UIKit

protocol Initialize {
    init(value: Int)
    init?(test: String)
}

class Test: Initialize {
    init() {
        
    }
    
    required init(value: Int) {
        print("THE INITILIZE here")
    }
    
    required init?(test: String) {
        if test != "chethan" {
            return nil
        }
    }
}

extension Test {
}


let a = Test()
let b = Test(value: 2)


class RequiredClass {
    let x: Int
    
    init(x: Int) {
        self.x = x
    }
    
    required init(value: Int, name: String) {
        self.x = value
    }
    
    convenience init(test: String) {
        self.init(x: 22)
    }
}

let a1 = RequiredClass(x: 22)



struct MyTest: Equatable {
    
}

struct Hash: Equatable {
    let a: Int = 0
    let test:MyTest = MyTest()
}

let b1 = Hash()
let b2 = Hash()

b1 == b2


protocol A {
    func a()
}

protocol B {
    func b()
}


class Another: A, B {
    func a() {}
    func b() {}

    func testGoesHere(param: A & B) {
        print("lala")
    }
}

let c1 = Another()
c1.testGoesHere(param: c1)

let array: [Any] = [c1]

if array.first! is A & B {
    print("SUCCESS")
}

if array.first! is Initialize {
    print("FALSE")
}

if array.first! as? Initialize != nil {
    print("SUCCESS")
}
