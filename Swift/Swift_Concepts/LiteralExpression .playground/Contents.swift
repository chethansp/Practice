import UIKit

//#sourceLocation(file: "here", line: 22)

//print(#file)
//print(#line)
//print(#column)
//print(#function)
//print(#dsohandle)


func name(functionName name: String = #file) {
    print(name)
}

name()

//Capture blocks
let a = 2
let b = 3

let c = { [a,b] in
    print(a)
    print(b)
}

c()

//Classes
class Test {
    
}

let a1: Any = Test.self
print(a1)

