import UIKit

protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}

extension Politician {
        
    func takeBribe() {
        
        if isDirty {
            print("Dirty")
        } else {
            print("Not Dirty")
        }
    }
}

class Test : Politician {
    var isDirty: Bool = true
}

let test = Test()
test.takeBribe()

protocol SuperHeroMovie {
    func writeScript() -> String
}

extension SuperHeroMovie {
    func makeScript() -> String {
        return """
        Lots of special effects,
        some half-baked jokes,
        and a hint of another
        sequel at the end.
        """
    }
}

protocol Chethan {}
protocol Chandan {}
