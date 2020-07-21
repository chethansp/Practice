import UIKit

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = {
    customersInLine.remove(at: 0)
}
print(customersInLine.count)

print("Now serving \(customerProvider())!")

print(customersInLine.count)




func serve(customer customerProvider: @autoclosure() -> String) {
    print("Now serving \(customerProvider())!")
}

func another(customer custom: @autoclosure() -> Int ){
    print("HERE")
    custom()
}

func coventional(customer custom: @convention(c) (Int, Int) -> Int) {
    print("test")
    custom(22,44)
}
    
serve(customer: customersInLine.remove(at: 0) )
serve(customer: "Test")

another(customer: 22)

coventional { (a, b) -> Int in
    print("Test")
    return 2
}
