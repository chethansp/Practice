import UIKit


protocol MakesDiagnoses {
    func evaluate(patient: String) -> String
}

protocol PrescribesMedicine {
    func prescribe(drug: String)
}

protocol Doctor: MakesDiagnoses, PrescribesMedicine {
    func test()
}

class Test: Doctor {
    func evaluate(patient: String) -> String {
        return ""
    }
    
    func prescribe(drug: String) {
        
    }
    
    func test() {
        
    }
}

protocol Buyable {
    var cost: Int { get }
}

protocol HasEngine {
    func startEngine()
}
protocol HasTrunk {
    func openTrunk()
}

struct Car: HasEngine, HasTrunk {
    func startEngine(){}
    func openTrunk(){}
}
