import UIKit

class SomeClass: NSObject {
    @objc var someProperty: Int
    
    init(someProperty: Int) {
        self.someProperty = someProperty
    }
    
}

let c = SomeClass(someProperty: 12)
let keypath = #keyPath(SomeClass.someProperty)

if let value = c.value(forKey: keypath) {
    print(value)
}

//When you use a key-path string expression within a class, you can refer to a property of that class by writing just the property name, without the class name.

extension SomeClass {
    func getSomeKeyPath() -> String {
        return #keyPath(someProperty)
    }
}
print(c.getSomeKeyPath())



