import UIKit

class Appliance {
    func start() {
        print("Starting...")
    }
}
class Oven: Appliance {
}

class Test: Oven {
    
}
let oven = Test()
oven.start()
