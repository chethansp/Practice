import UIKit

class Test {
    
    @objc let property: String
    
    @objc func someFunc() {
    }
    
    @objc func lala() {
    }
    
    init(property: String) {
        self.property = property
    }
}


let another = #selector(Test.someFunc)
let anotherCasting = #selector(getter: Test.property)
