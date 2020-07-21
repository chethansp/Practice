import UIKit

@propertyWrapper
struct Box{
    
    private var tryMe: Int
    
    private var value = 0
    var wrappedValue: Int {
        get {
            value > 50 ? value : 50
        }
        set{
            value = newValue
        }
    }
    
    init(wrappedValue: Int, tryMe: Int) {
        self.value = wrappedValue
        self.tryMe = tryMe
    }
}


struct Foo {
    @Box(tryMe: 22) var x: Int = 0
}

var t = Foo()
t.x = 200
print(t.x)
t.x = 20
print("Value")
