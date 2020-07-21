import UIKit

func check(scores: [Int]) -> Bool {
    for score in scores {
        if score < 80 {
            return false
        }
    }
    return true
}

check(scores: [100, 90, 100, 85])
