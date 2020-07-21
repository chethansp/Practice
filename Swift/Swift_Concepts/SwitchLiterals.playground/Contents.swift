import UIKit

var value = 200

switch value {
    
case 0...10:
    print("In Range")
    break
  
case let a where a > 100:
    print("type casting")
    break
    
default:
    print("default")
}



var character: Character = "a"

switch character {
case "a", "b":
    print("Character is here")
    break
  
case "c":
    print("test here")
    fallthrough
    
default:
    print("default")
}

let somepoint = (1, 1)

switch somepoint {
case (1,2):
    print("its equal")
    break
    
case (_, 2):
    print("Second matching")
    break
    
case (let a, _) where a > 5:
    print(a)
    break
    
case let (a,b):
    print("test")
    break
    
default:
    print("default tuple")
}


enum Test<T> {
    case Success
    case Fail(test: T)
}

let a = Test<Int>.Success
let b = Test<String>.Fail(test: "Cool")

if case Test.Fail(let test) = b {
    print("The Enum is \(test)")
}
