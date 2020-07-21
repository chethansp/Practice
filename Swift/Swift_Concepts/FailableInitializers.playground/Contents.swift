import UIKit

struct Password {
    var text: String
    
    init?(input: String) {
        if input.count < 6 {
            print("Password too short.")
            return nil
        }
        text = input
    }
}

let password = Password(input: "hell0")


var hasForcePowers = "False"
let convertedHasForcePowers = Bool(hasForcePowers)


struct Test {
    var name: String!
    
    init?(name: String) {
        if name.hasPrefix("c") {
            self.name = name
            return
        }
        return nil
    }
}

let test = Test(name: "prathika")
let test1 = Test(name: "cprathika")


struct DEFCONRating {
    var number: Int
    
    init?(number: Int) {
        guard number > 0 else { return nil }
        guard number <= 5 else { return nil }
        self.number = number
    }
}
let defcon = DEFCONRating(number: 6)
