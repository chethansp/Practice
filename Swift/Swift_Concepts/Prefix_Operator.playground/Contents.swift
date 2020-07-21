import UIKit

prefix operator &&&

class Test {
    
}

extension Test {
    static prefix func &&&(lsh: inout Test) -> Test {
        return lsh
    }
}

