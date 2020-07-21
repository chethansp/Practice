import UIKit

@propertyWrapper
struct SomeWrapper {
    
    var wrappedValue: Int
    var someValue: Double
    
    init() {
        self.wrappedValue = 100
        self.someValue = 12.3
    }
    
    init(wrappedValue: Int) {
        self.wrappedValue = wrappedValue
        self.someValue = 45.6
    }
    
    init(wrappedValue value: Int, custom: Double) {
        self.wrappedValue = value
        self.someValue = custom
    }
}




struct SomeStruct {
    
    // Uses init()
    @SomeWrapper var a: Int
    
    // Uses init(wrappedValue:)
    @SomeWrapper var b = 10
    
    @SomeWrapper(custom:98.7) var c = 30
    @SomeWrapper(wrappedValue: 30, custom: 98.7) var d
}

var temp = SomeStruct()
temp.a



class C {
    @warn_unqualified_access func foo(x: Int) -> Int {
        return x
    }
}

func main() {
    let c = C()
    c.foo(x: 1)
}

main()


//@IBAction
//@IBSegueAction
//@IBOutlet
//@IBInspectable
//@IBDesignable

//@testable

//@UIApplicationMain

//@warn_unqualified_access
