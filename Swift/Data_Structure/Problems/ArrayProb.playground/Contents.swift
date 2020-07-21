import UIKit

extension Array where Element: Hashable {
    func diff(from other: [Element]) -> [Element] {
        let s1 = Set.init(self)
        let s2 = Set.init(other)
        return Array(s1.symmetricDifference(s2))
    }
}
    
var str = "Hello, playground"

let a1 = [1,2,3,4,5]
let a2 = [2,3,7,8,9]

var diff = a1.diff(from: a2)
print(diff.sorted(by:  >))

