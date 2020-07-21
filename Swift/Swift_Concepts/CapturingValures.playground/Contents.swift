import UIKit

func makeAddr() -> (Int) -> Void {
    var sum = 10
    return {
        sum += $0
        print("First argument \($0)")
        print("Sum is now \(sum)")
    }
}

let b = makeAddr()
b(3)

func swingBat() -> () -> Void {
    var strikes = 0
    return {
        strikes += 1
        if strikes >= 3 {
            print("You're out!")
        } else {
            print("Strike \(strikes)")
        }
    }
}
let swing = swingBat()
swing()
swing()
swing()


func storeTwoValues(value1: String,
                    value2: String) -> (String) -> String {
    var previous = value1
    var current = value2
    return { new in
        let removed = previous
        previous = current
        current = new
        return "Removed \(removed)"
    }
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")
print(removed)


func findTallest() -> (String, Double) -> (String) {
    var tallestName = ""
    var tallestHeight = 0
    return {
        if Int($1) > tallestHeight {
            tallestName = $0
            tallestHeight = Int($1)
        }
        return tallestName
    }
}
let tallest = findTallest()
var tallestName = tallest("Hannah", 1.72)
tallestName = tallest("Christina", 1.68)


func visitPlaces() -> (String) -> Void {
    var places = [String: Int]()
   
    return {
        places[$0, default: 0] += 1
        let timesVisited = places[$0, default: 0]
        print("Number of times I've visited \($0): \(timesVisited).")
    }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")

var places = [String: Int]()
places["chethan", default:1]

var b1: [String:Int] = [String: Int]()
b1["chethan", default:3]
b1["chandan", default:1] += 1

//b1["chethan", default:3] += 4
print(b1["chandan"] ?? "nil")
print(b1.count)

var test:[String] = [String]()
test.append("Cool")
test.append("Another")


func makeRepeater(count: Int) -> () -> Void {
    return {
        for _ in 0..<count {
            print("test")
        }
    }
}
let repeater = makeRepeater(count: 3)
repeater()

