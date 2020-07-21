import UIKit


extension Double {
    
    var isNegative: Bool {
        return true
    }
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

extension String {
    mutating func append(_ other: String) {
        self += other
    }
}
