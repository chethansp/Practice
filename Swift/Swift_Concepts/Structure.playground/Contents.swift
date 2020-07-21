import UIKit


struct ComputedProperties {
    
    var test: String
    var isOk = true
    
    var status: Bool {
        return true
    }
}


struct FishTank {
    var capacity: Int
    var fishCount: Int {
        didSet {
            if fishCount > capacity {
                print("You have too many fish!")
            }
        }
    }
    
    var test: String {
        return "Cool"
    }
}

let a = FishTank(capacity: 2, fishCount: 33)

print("test")


struct Dog {
    var age: Int {
        didSet {
            let dogAge = age * 7
            print("I'm now \(dogAge) in dog years.")
        }
    }
}

struct Car {
    var maxSpeed: Int
    
    func accelerate(to speed: Int) {
        if speed > maxSpeed {
            print("That's too fast!")
        } else {
            print("OK, let's go!")
        }
    }
    
    mutating func testCar() -> Int {
        self.maxSpeed = 22
        return 22
    }
}

var car = Car(maxSpeed: 12)
car.accelerate(to: 22)
