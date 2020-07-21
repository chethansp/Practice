import UIKit

//CGFloat myCFunction(CGFloat (callback)(CGFloat x, CGFloat y)) {
//    return callback(1.1, 2.2);
//}

var foo = "String"

typealias CFunction = @convention(c) (UnsafeMutablePointer<Void>, Float) -> Int

//let bar = unsafeBitCast(foo, CFunction.self)
