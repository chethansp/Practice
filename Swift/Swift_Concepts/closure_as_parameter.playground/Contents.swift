import UIKit

var swift: String {
    print("Cool - I can use closures!")
    return "test"
}

print(swift)


var playDOG = {
    print("DOG")
}

playDOG()

func play(using handler: ()->Void) -> String {
    print("Play")
    handler()
    return "test"
}

play(using: playDOG)

func buildHouse(using param: ()->Void ) {
    print("house is building")
    param()
}

buildHouse(using: playDOG)

buildHouse {
    print("test")
}

var payCash = {
    print("Here's the money.")
}

func buy(items:[String], using paycash:()->Void) {
    print("inside")
    paycash()
}

buy(items: ["test"], using: payCash)

func printDocument(using: ()->Void) {
    using()
}

printDocument(using: payCash)
