import UIKit

struct City {
    var address: String
    var country: [String]
}

let c = City(address: "Punggol", country: ["Singapore"])

let prop = c[keyPath: \City.country]
print(prop)

let a1 = c[keyPath: \.country.first]
print(a1 ?? "")

var compoundValue = (a: 1, b: 2)
compoundValue[keyPath:\.self] = (2,3)

//Keypath expression
struct OuterStructure {
    var outer: City
    init(someValue: Int) {
        self.outer = City(address: "", country: [""])
    }
}
let nested = OuterStructure(someValue: 24)
let nestedKeyPath = \OuterStructure.outer.country.count
let nestedValue = nested[keyPath: nestedKeyPath]

//Keypath of type subscript
let greetings = ["hello", "hola", "bonjour", "안녕"]
let val = greetings[keyPath: \[String].[1]]

var index = 2
let path = \[String].[2]
let fn: ([String]) -> String = { strings in strings[index] }

print(greetings[keyPath: path])
print(fn(greetings))


index += 1
print(greetings[keyPath: path])
print(fn(greetings))

//Optional chaining path
let firstGreetings: String? = greetings.first
print(firstGreetings?.count as Any)

let count = greetings[keyPath: \[String].first?.count]
print(count as Any)


//Dictionary
let interestingNumbers = ["prime": [2, 3, 5, 7, 11, 13, 17],
                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]

print(interestingNumbers[keyPath: \[String: [Int]].["hexagonal"]!.count])

print(interestingNumbers[keyPath: \[String: [Int]].["hexagonal"]![0]])

print(interestingNumbers[keyPath: \[String: [Int]].["hexagonal"]!.count.bitWidth])

//For parameter to higher order function

 struct Task {
    var description: String
    var completed: Bool
    
    
}

var toDoList: [Task] = [
    Task(description: "Practice ping-pong.", completed: false),
    Task(description: "Buy a pirate costume.", completed: true),
    Task(description: "Visit Boston in the Fall.", completed: false),
]

let description = toDoList.map(\.description)


extension Sequence {
    
    func map<T>(_ keyPath: KeyPath<Element, T>) -> [T] {
        return map { $0[keyPath: keyPath] }
    }
}



