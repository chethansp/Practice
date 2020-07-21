import UIKit

//Key Path Expressions as Functions

struct User {
    let name: String
    let age: Int
    var bestFriend: String? = nil

    var canVote: Bool {
        age >= 18
    }
}

let eric = User(name: "Eric Effiong", age: 18, bestFriend: "Otis Milburn")
let maeve = User(name: "Maeve Wiley", age: 19 )
let otis = User(name: "Otis Milburn", age: 17, bestFriend: "Eric Effiong")
let users = [eric, maeve, otis]

let userNames = users.map(\.name)
print(userNames)

let voters = users.filter(\.canVote)
print(voters)


//Callable values of user-defined nominal types

struct Dice { 
    var lowerBound: Int
    var upperBound: Int

    func callAsFunction() -> Int {
        (lowerBound...upperBound).randomElement()!
    }
}

let d6 = Dice(lowerBound: 3, upperBound: 6)
let roll = d6()
print(roll)
