import UIKit

var str = "Hello, playground"

print(str)


//1. Memberwise initialization for structure

struct User {
    var name: String
    var loginCount: Int = 0
    
    //2. implict return of function
    func getName() -> String {
        name
    }
}

let piper = User(name: "Test")
print(piper.getName())

//3. Universal Type for Dynamic Type
class NetworkManager {
    class var maximumActiveRequests: Int {
        return 4
    }

    func printDebugData() {
        print("Maximum network requests: \(NetworkManager.maximumActiveRequests).")
    }
}

class ThrottleNetworkManager: NetworkManager {
    override class var maximumActiveRequests: Int {
        return 1
    }
}

let manager = ThrottleNetworkManager()
manager.printDebugData()


//4. Opaque Type
protocol Fighter: Equatable {
    
}

struct xWing: Fighter {}

func launchFighter() -> some Fighter {
    xWing()
}

let red5 = launchFighter()
let red6 = launchFighter()

print(red5 == red6)

func makeInt() -> some Equatable {
    Int.random(in: 1...10)
}

func makeString() -> some Equatable {
    "test"
}

let a = makeInt()
let b = makeInt()

print(a == b)


protocol ImperialFighter {
    init()
}

struct TIEFighter: ImperialFighter {}
struct TIEAdvanceFighter: ImperialFighter {}

func lanunchImperialFighter<T: ImperialFighter>() -> T {
    T()
}

let fighter1: TIEFighter  = lanunchImperialFighter()
let fighter2: TIEAdvanceFighter = lanunchImperialFighter()

print(fighter1)
print(fighter2)


//Generic Type

func Test<U: Equatable>(input:U) -> U {
    print(input)
    return input
}

func withOutParameter<U: Equatable>() -> U {
    return "trata" as! U
}

Test(input: "Cool")
let anotherTest: String = withOutParameter()


//4. Static Subscript

public enum OldSettings {
    private static var values = [String: String]()

    static func get(_ name: String) -> String? {
        return values[name]
    }

    static func set(_ name: String, to newValue: String?) {
        print("Adjusting \(name) to \(newValue ?? "nil")")
        values[name] = newValue
    }
}

OldSettings.set("Captain", to: "Gary")
OldSettings.set("Friend", to: "Mooncake")
print(OldSettings.get("Captain") ?? "Unknown")


public enum NewSettiings {
    private static var values = [String: String]()
    
    public static subscript(_ name: String) -> String? {
        get {
            return values[name]
        }
        set{
            values[name] = newValue
        }
    }
}

NewSettiings["Captaim"] = "Gary"
print(NewSettiings["Captaim"])


enum BorderStyle {
    case none
    case solid(thickness: Int)
}

let border1: BorderStyle  = .none
print(border1)


let border2: BorderStyle?  = BorderStyle.none
print(border2)

//6. matcthing optional enums

enum BuildStatus {
    case starting
    case Progress
    case complete
}

let status: BuildStatus? = .Progress

switch status {

case  .Progress:
    print("progress")
    
default:
    print("Test Here")
}
