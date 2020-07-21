import UIKit

var a = [2,3,6,8,2,3,4,5]

for i in 0 ..< a.count {
    for j in 1 ..< a.count-i {
        if a[j] < a[j-1] {
            let temp = a[j]
            a[j] = a[j-1]
            a[j-1] = temp
        }
    }
}

print(a)
