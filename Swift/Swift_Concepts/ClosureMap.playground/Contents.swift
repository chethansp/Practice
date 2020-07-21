import UIKit

let strings = ["chethan", "chandan", "Ganesh"]

let s = strings.map { (value) -> String in
    return value
}.filter { (value) -> Bool in
    return true
}

s

let s1 = strings.map { (a) -> String in
    return a.description
}

