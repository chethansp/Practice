import UIKit

print("test")
let name = "Chethan"
var tempArray: [String] = ["1","2"]
let k = tempArray.joined(separator: "-")
print(k)
let n = tempArray.joined(separator: ["c", "3"])
print(n)


//Joined Sequnce

let a1 = ["2","3"]
let a2 = ["2","4"]

print(a1.elementsEqual(a2))

//ArraySlice
var absences:[Int] = [2,0, 2, 0, 4, 0, 3, 1, 0, 10]

let midpoint = absences.count / 2

let firstHalf = absences[..<midpoint]
let secondHalf = absences[midpoint...]

let firstHalfSum = firstHalf.reduce(0, +)
let secondHalfSum = secondHalf.reduce(0, +)

if let i = absences.firstIndex(where: { $0 > 0 }) { // 1
    print(i)
    let absencesAfterFirst = absences[(i + 1)...]                   // 2

    if let j = absencesAfterFirst.firstIndex(where: { $0 > 0 }) {   // 3
        
        print(j)
    }
}

//Array lazy
let test = absences.lazy.filter({ $0 > 0})
print(test.count)


var testArray:[Int] = [1,2,3,4,5,6,7,8,9]
//let poplast = testArray.popLast()
//var popfirst = testArray[...].popFirst()

var list = testArray[ ..<testArray.count]

testArray.replaceSubrange(Range(2...5), with: [1,2,3,4,5,6,7])
print(testArray)

//Range
let range = 0...10

print(range.upperBound)
print(range.lowerBound)
print(range.contains(9))

print(range.distance(from: range.startIndex, to: range.endIndex))

print(range.reversed().endIndex)
print(range.endIndex)

let subrange = range.upperBound

for i in range {
    print(i)
}

print(range.overlaps(0...5))

print(range.contains(8))

print(range.isEmpty)

let anotherRange = 0..<0
print(anotherRange.isEmpty)

let indices = range.shuffled()
print(indices.startIndex)
print(indices.endIndex)

//String Range

var myString = "abcde"
let start = myString.index(myString.startIndex, offsetBy: 1)
let end = myString.index(myString.startIndex, offsetBy: 4)
let myRange = start..<end
myString[myRange]



myString = "a😀cde"
let start2 = myString.index(myString.startIndex, offsetBy: 1)
let end2 = myString.index(myString.startIndex, offsetBy: 4)
let myRange2 = start2..<end2
myString[myRange2] // "😀cd"


var str = "Hello, playground"

str[str.startIndex]
//str[str.endIndex]

let r = str.startIndex...
str[r]

str[..<str.endIndex]

let endIndex = str.index(str.startIndex, offsetBy: 2)
str[str.startIndex...endIndex]

let coll = [1,2,3]

