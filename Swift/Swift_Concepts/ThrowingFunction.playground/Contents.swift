import UIKit

enum PlayError: Error {
    case cheating
    case noPlayers
}

func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}

enum PizzaErrors: Error {
    case hasPineapple
}
func makePizza(type: String) throws {
    if type != "Hawaiian" {
        print("Your pizza will be ready in 10 minutes.")
    } else {
//        throw PizzaErrors.hasPineapple
    }
}

//has to confirm to error.
enum ChargeError: Error {
    case noCable
    case noPower
}

func chargePhone(atHome: Bool) throws {
    if atHome {
        print("Phone is charging...")
    } else {
        throw ChargeError.noPower
    }
}

enum PrintError: Error {
    case invalidCount
}
func printPages(text: String, count: Int) throws {
    if count <= 0 {
        throw PrintError.invalidCount
    } else {
        for _ in 1...count {
            print("Printing \(text)...")
        }
    }
}

func test(element: inout Int) {
    print(element)
    element = 200
}

var a = 22
test(element: &a)
