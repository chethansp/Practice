import UIKit

func returnClousre(first: Int) -> () ->() {
    print("test")
    return {
        print("Cool")
    }
}

let a = returnClousre(first: 2)
a()

func secondReturn(first: Int) -> (String) -> (String) {
    return { chethan in
        return "Chethan"
    }
}


let b = secondReturn(first: 2)
let val = b("Chethan")
print(val)
