import UIKit

//Trailing closure won't respect parameter name (_) or default parameter

func testHere(first: String, _ handler:(Int)->Void) {
    print("testHere")
    handler(22)
    print("done")
}


testHere(first: "cool") { (test: Int) in
    print(test)
}




var printHere = {
    print("test")
}

printHere()


var comparator = { (one: Int, second: Int) -> Bool in
    return one > second
}

func sort( array: inout [Int], comparator: (Int,Int) -> (Bool)) {
    
    for i in 0 ..< array.count {
        
        for j in i..<array.count {
            
            if comparator(array[i], array[j]) {
                let temp = array[j]
                array[j] = array[i]
                array[i] = temp
            }
        }
    }
}

var array: [Int] = [10,2,3,4]
sort(array: &array, comparator: comparator)
print(array)

func printDocument(_ document: String, configurationCheck: (String, Int) -> Bool) {
    let copies = 1
    let isAllowed = configurationCheck(document, copies)
    if isAllowed {
        print("Printing now.")
    } else {
        print("That document can't be printed.")
    }
}

func runBarbecue(foods: [String], grillTechnique: (String, Int) -> Void) {
    let spiceLevel = 10
    for food in foods {
        grillTechnique(food, spiceLevel)
    }
}

func makeGreeting(language: String) -> (String) -> Void {
    if language == "French" {
        return {
            print("Bonjour, \($0)!")
        }
    } else {
        return {
            print("Hello, \($0)!")
        }
    }
}
let greeting = makeGreeting(language: "English")
greeting("Paul")


func createDoubler() -> (Int, Int) -> Int {
    return {
        print($1)
        return $0 * 2
    }
}

let a  = createDoubler()
let j = a(22,33)
print(j)
