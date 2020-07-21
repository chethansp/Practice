import UIKit

class Vehicle {
    
    var currentSpeed : Double = 0.0 {
        didSet{
            print("Super class")
        }
    }
    
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
    
}

class Train: Vehicle {
   override  func makeNoise()  {
    }
    
    override var description: String {
        return super.description + "here"
    }
}

class Car: Vehicle {
    var gear = 1
    
    override var description: String {
        return super.description + " in gear \(gear)"
    }
    
}

class AutomaticCar: Car {
    
    override var currentSpeed: Double {
        didSet {
            print("Sub class")
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let a = AutomaticCar()
a.currentSpeed = 22.0
