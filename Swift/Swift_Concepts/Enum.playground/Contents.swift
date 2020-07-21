import UIKit

enum IntEnum : Int {
    case ONE = 1
    case TWO = 2
    case THREE = 3
    case FOUR = 4
}

var test = IntEnum.ONE.rawValue

enum TestEnum {
    case error(code: Int)
    case result(data: Data)
}

var val = TestEnum.error(code: 22)

var array = [AnyObject]()
struct Test {}
//array.append(Test())

array.append(1 as AnyObject)
array.append(false as AnyObject)
array.append("Cool" as AnyObject)
