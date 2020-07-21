import UIKit

infix operator ** :  AdditionPrecedence
infix operator ^ : AdditionPrecedence

//prefix operator ++


class Operator {
    var count: Int = 10
 
    static func +(lhs: Operator, rhs: Operator) -> Operator {
        let val = Operator()
        val.count = lhs.count + rhs.count
        return val
    }
    
    static func **(lhs: Operator, rhs: Operator) -> Operator {
          let val = Operator()
          val.count = lhs.count * rhs.count
          return val
      }
    
    static func ^(lhs: Operator, rhs: Operator) -> Operator {
        let val = Operator()
             val.count = lhs.count * rhs.count
             return val
    }
    
     static func >> (lhs: Operator, type: Int) {
        for _ in 1 ... type {
            print("Cool")
        }
    }
    
//    static prefix func ++(lhs: Operator) -> Operator {
//        let val = Operator()
//        val.count += 1
//        return val
//    }
    
}


let a1 = Operator()
let a2 = Operator()
let a3 = a1 + a2
let a4 = a1 + (a2 ** a3)

print(a3.count)
print(a4.count)

let a5 = a1 ^ a2
print(a5.count)

a1 >> 2
