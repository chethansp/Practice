import UIKit

func holdClass(subject: String, topics: ()->Void) {
    print("Welcome here")
    topics()
    print("End here")
}

holdClass(subject: "test") {
    print("Inside hold class")
}


func testHere(subject: String, and topics: ()->Void) {
    print("Welcome here")
    topics()
    print("End here")
}

testHere(subject: "test") {
    print("test here")
}

func phoneFriend(conversation: () -> Void) {
    print("Calling 555-1234...")
    conversation()
}

phoneFriend {
    print ("test here")
}


func doTrick(_ trick:()->Void) {
        trick()
}

doTrick {
    print("trick")
}

func assembleToy(instruction: () -> Void) {
    instruction()
    print("It's done!")
}

assembleToy {
    print("test")
    print("another test")
}


func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}


goOnVacation(to: "") {
    print("here")
}


//Default param
func here(test: String) {
    print("test")
}

here(test: "lala")

//Param defnitin
func hereParam(param test: String) {
    print("test")
}

hereParam(param: "")

//No param
func hereNoParamDefnition(_ test: String) {
    print("test")
}

hereNoParamDefnition("")


//multiple parameter
func anotherTest(number: Int, _ test: String) {
    print(number)
    print(test)
}

anotherTest(number: 3, "Cool")


//multiple parameter with no parameter defnition
func anotherTestWithNoDefnition(_ number: Int, _ test: String) {
    print(number)
    print(test)
}

anotherTestWithNoDefnition(2, "Cool")
