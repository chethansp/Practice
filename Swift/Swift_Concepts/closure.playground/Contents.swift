import UIKit

var animals = ["fish", "cat", "chicken", "dog"]
animals.sort(by: <)
print(animals)

var x : String? = "Test"

//Forced unwrapping — unsafe.
let a: String = x!

//Implicitly unwrapped variable declaration — unsafe in many cases.
var b = x!

//Optional binding — safe.
if let a = x {
    print("test \(a)")
}

//Optional chaining — safe.
let count = x?.count
print(count ?? "test")

//Guard statement — safe.
//guard let a = x else {
//
//}

//Optional pattern — safe.
if case let a? = x {
    print(a)
}

nil == Optional.none

var thing = "cars"
var ok = ""

let closure = { [] in
    print("I love \(thing)")
    print("I love \(ok)")
}

thing = "airplanes"

closure()

