import UIKit

@propertyWrapper
struct Ranged<T: Comparable> {
    private var minimum: T
    private var maximum: T
    private var value: T
    var wrappedValue: T {
        get { value }
        set {
            if newValue > maximum {
                value = maximum
            } else if newValue < minimum {
                value = minimum
            } else {
                value = newValue
            }
        }
    }
    init(wrappedValue: T, minimum: T, maximum: T) {
        print("Wraped Value \(wrappedValue)")
        self.minimum = minimum
        self.maximum = maximum
        self.value = wrappedValue
        self.wrappedValue = wrappedValue
    }
}

struct Form {
    @Ranged(minimum: 17, maximum: 65) var age: Int = 10
}

var form = Form()
form.age = 100 // 65
form.age = 2 // 17



@propertyWrapper
struct ISO8601DateFormatted {
    static private let formatter = ISO8601DateFormatter()
    var projectedValue: String {
        ISO8601DateFormatted.formatter.string(from: wrappedValue)
    }
    var wrappedValue: Date
}

struct Form1 {
    @ISO8601DateFormatted var lastLoginAt: Date
}

let user = Form1(lastLoginAt: Date())
user.lastLoginAt

//This returns the projected value
user.$lastLoginAt


@propertyWrapper
class Test {
    var count: Int = 0
    var wrappedValue: Int {
        get {
            count
        }
        set {
            count = newValue
        }
    }
    
    init(wrappedValue: Int) {
        self.wrappedValue = wrappedValue
    }
}

class AllTest {
    @Test var value: Int
    init(test: Int) {
        self.value = test
    }
}

let a = AllTest(test: 20)
print(a.value)

a.value = 200
print(a.value)


