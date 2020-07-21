import UIKit

@dynamicCallable
struct TelephoneExchange {
    func printTelephoneExchange(times: Int) {
        for _ in 0...times {
            print("Print Exchange here")
        }
    }
    
    func dynamicallyCall(withArguments componenets: [String]) {
        for element in componenets {
            print("Element \(element)")
        }
    }
}

let tel = TelephoneExchange()
tel("22","33")


@dynamicCallable
struct Repeater {
    func dynamicallyCall(withKeywordArguments pairs: KeyValuePairs<String,Int>) -> String {
        for (key,pair) in pairs {
            print(key)
            print(pair)
        }
        return "cool"
    }
}

let t = Repeater()
t(a:1, b:2)
