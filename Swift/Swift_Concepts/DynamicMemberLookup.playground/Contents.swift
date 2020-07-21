import UIKit

//subscript(dynamicMemberLookup:)

@dynamicMemberLookup
struct DynamicStruct {
    
    let dictionary = ["someDynamicMember": 325,
                      "someOtherMember": 787]
    subscript(dynamicMember member: String) -> Int {
        return dictionary[member] ?? 2020
    }
}

let s  = DynamicStruct()

//Use dynamic member
let dynamic = s.someDynamicMember
print(dynamic)

let eq = s[dynamicMember: "someDynamicMember"]
print(eq)


struct Point {
    var x: Int
    var y: Int
    
     func test() {
        print("test")
    }
}

@dynamicMemberLookup
struct PassthroughWrapper<Value> {
    var value: Value
    
    subscript<T>(dynamicMember member:KeyPath<Value, T>) -> T {
        get {
            return value[keyPath: member]
        }
    }
}

let point = Point(x: 32, y: 45)
let wrapper = PassthroughWrapper(value: point)
print(wrapper.x)

