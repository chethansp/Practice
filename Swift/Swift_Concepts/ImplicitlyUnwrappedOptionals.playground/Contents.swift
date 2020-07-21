import UIKit

class Test {
    var element: String!
    
    init() {
        self.element = "Chethan"
    }
}

let a = Test()
a.element = "Man"
print(a.element.uppercased())
a.element = nil
print(a.element?.uppercased())

if let a = a.element {
    print("Inside the loop")
}


let legoBricksSold: Int? = 400_000_000_000
let numberSold = legoBricksSold!

func goals(for player: String) -> Int? {
    print("Sorry, the system is down right now.")
    return nil
}
let harryGoals = goals(for: "Harry Kane")

let capitals = ["Scotland": "Edinburgh", "Wales": "Cardiff"]
let scottishCapital = capitals["Scotland"]?.uppercased()
