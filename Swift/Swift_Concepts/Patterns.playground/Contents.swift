import UIKit

//Wildcard pattern

for _ in 0...3 {
    print("_ is wild card pattern")
}


//--------------------------

//Identifier Pattern

//An identifier pattern matches any value and binds the matched value to a variable or constant name
let value = 43


//--------------------------

//Value-Binding Pattern

let point = (3,2)

switch point {
    
case let (x,y):
    print(x)
    print(y)

}

//--------------------------


//Tuple Pattern

let points = [(0,0), (1,2), (1,3)]

for (x,y) in points {
    print("elements \(x) --> \(y)")
}

for (_,y) in points {
    print("elements \(y)")
}

//--------------------------


//Enumaration case pattern

enum Direction{
    case North
    case South
    case East(value: Int)
    case West
}

let type = Direction.North

switch type {
case .North:
    print("North")
case .South:
    print("South")
case .East:
    print("East")
case .West:
    print("West")
    
@unknown default:
    print("unknown")
    
}

//--------------------------


//Optional Pattern

let someElement: Int? = 42

//1
if case Optional.some(let x) = someElement {
    print("inside sum \(x)")
}

let x = Direction.East(value: 22)
if case Direction.East(let a) = x {
    print("The element is \(a)")
}


//2
if case let newVal? = someElement {
    print("Element \(newVal)")
}

//3
let arrayOfOptionalInts: [Int?] = [nil, 2, 3, nil, 5]
for case let number? in arrayOfOptionalInts {
    print("NUMBER \(number)")
}


//--------------------------


//Type-Casting Patterns

let str = "chethan"

if str is String {
    print("its String")
}


//--------------------------



//Expression pattern point1 = (1, 2)

//An expression pattern represents the value of an expression. Expression patterns appear only in switch statement case labels.

let point1 = (1, 2)

switch point1 {
case (0, 0):
    print("(0, 0) is at the origin.")
case (-2...2, -2...2):
    print("(\(point1.0), \(point1.1)) is near the origin.")
default:
    print("The point is at (\(point1.0), \(point1.1)).")
}

// Overload the ~= operator to match a string with an integer.
func ~= (pattern: String, value: Int) -> Bool {
    print("THE PATTERN IN")
    return pattern == "\(value)"
}

switch point1 {
    
case ("0", "0"):
    print("(0, 0) is at the origin.")
    
default:
    print("The point is at (\(point1.0), \(point1.1)).")
    
}
