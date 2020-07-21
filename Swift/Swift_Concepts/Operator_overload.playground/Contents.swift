import UIKit

var str = "Hello, playground"

func +(left: [Int], right: [Int]) -> [Int] { // 1
    var sum = [Int]() // 2
    assert(left.count == right.count, "vector of same length only")  // 3
    for (key, v) in left.enumerated() {
      sum.append(left[key] + right[key]) // 4
    }
    return sum
}

var sumArray1 = [1, 2, 3] + [1, 2, 3]


func -(left:[Int], right:[Int]) -> String {
    return "Cool"
}
var test = [3] - [2]


//Name your operator
//Choose a type
//Assign precedence and associativity


//infix operator ⊕ : DotProductPrecedence
//
//func ⊕(left: [Int], right: [Int]) -> [Int] { // 2
//    return []
//}


precedencegroup DotProductPrecedence {
  lowerThan: AdditionPrecedence
  associativity: left
}

infix operator •: DotProductPrecedence
        
struct Vector {
  let x: Int
  let y: Int
  let z: Int
}

extension Vector: ExpressibleByArrayLiteral {
    init(arrayLiteral: Int...) {
        assert(arrayLiteral.count == 3, "Must initialize vector with 3 values.")
        self.x = arrayLiteral[0]
        self.y = arrayLiteral[1]
        self.z = arrayLiteral[2]
    }
    
    static prefix func - (vector: Vector) -> Vector {
        return [-vector.x, -vector.y, -vector.z]
    }
    
    
    static func * (left: Int, right: Vector) -> Vector {
      return [
        right.x * left,
        right.y * left,
        right.z * left
      ]
    }

    static func * (left: Vector, right: Int) -> Vector {
      return right * left
    }
    
    static func * (left: Vector, right: Vector) -> Vector {
      return [
        left.y * right.z - left.z * right.y,
        left.z * right.x - left.x * right.z,
        left.x * right.y - left.y * right.x
      ]
    }
    
    static func • (left: Vector, right: Vector) -> Int {
      return left.x * right.x + left.y * right.y + left.z * right.z
    }
}

extension Vector: Equatable {
  static func == (left: Vector, right: Vector) -> Bool {
    return left.x == right.x && left.y == right.y && left.z == right.z
  }
}


extension Vector: CustomStringConvertible {
  var description: String {
    return "(\(x), \(y), \(z))"
  }
}

// MARK: - Operators
extension Vector {
  static func + (left: Vector, right: Vector) -> Vector {
    return [
      left.x + right.x,
      left.y + right.y,
      left.z + right.z
    ]
  }
}

let vectorA: Vector = [1, 3, 2]
let vectorB = [-2, 5, 1] as Vector

vectorA == vectorB
-vectorA // (-1, -3, -2)

vectorA • vectorB

vectorA • vectorB + vectorA



