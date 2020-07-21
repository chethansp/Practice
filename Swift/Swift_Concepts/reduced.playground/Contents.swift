import UIKit

func countUniques<T: Comparable>(_ array: Array<T>) -> Int {
    let sorted = array.sorted()
    
    let initial: (T?, Int) = (.none, 0)
    
    let reduced = sorted.reduce(initial) {
        ($1, $0.0 == $1 ? $0.1 : $0.1 + 1)
    }
    
    return reduced.1
}


let a = [1,2,4,5]

let reduced = a.reduce(0) { ( result, nextValue) -> Int in
    return result + nextValue
}

print(reduced)


struct Kitten {
}

func showKitten(kitten: Kitten?) {
  guard let k = kitten else {
    print("There is no kitten")
    return
  }
  print(k)
}
