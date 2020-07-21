import UIKit

class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")


//class School {
//    let students = 200
//    func expel(student: String, for reason: String) {
//        print("\(student) has been expelled for \(reason).")
//        students -= 1
//    }
//}
//let school = School()
//school.expel(student: "Jason", for: "coding during class")
