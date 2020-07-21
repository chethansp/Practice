import UIKit

struct Conference {
    var name: String
    var location: String
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
let wwdc = Conference(name: "WWDC", location: "San Jose")


struct Kitchen {
    var utensils: [String]
     
    var test: String {
        get {
            return ""
        }
    }
    
    lazy var lazyProp: ()->() = {
        print("Chethan")
    }
    
    init(utensils: [String]) {
        self.utensils = utensils
    }
}

print("test here")
var kitchen = Kitchen(utensils: ["lala"])
kitchen.lazyProp()
