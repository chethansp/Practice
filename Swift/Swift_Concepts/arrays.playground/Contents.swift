import UIKit

var array = [1,2,3,4,5,6,7,8,9]

var a = array.capacity
a = array.count


array.suffix(4)

array.prefix(4)

array.split(separator: 5)

let val = array.split { (a: Int) -> Bool in
    return a==8
}

print(val)

array = [1,3,2,4,5,2,6,7,2,2,2,2,8,9,2]

array.split(separator: 2, maxSplits: 5, omittingEmptySubsequences: true)

array.swapAt(0, array.count-1)

array.min()

array.max()

let min = array.max { (_, _) -> Bool in
    return true
}

print(min)

array.contains(2)

array.first { (temp) -> Bool in
    return false
}


array.reverse()

let str: Any? = nil
let all:[Any] = [1,2,"Chethan",str,"cool",(()->Void).self]

//printSeq(all)
print(all.compactMap({ $0 as? Int }))

print([1,2,nil].compactMap({$0}))

let numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print(numbers.flatMap({$0}))

var reduce = [1,2,3,4,5]
reduce.reserveCapacity(100)
reduce.count
reduce.capacity
let q = reduce.reduce(0) { (a:Int,b: Int) -> Int in
    return a + b
}

print(q)

let b = reduce.reduce(1, -)

//Lazy ??

