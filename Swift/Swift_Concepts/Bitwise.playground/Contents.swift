import UIKit

let initialBits: UInt8 = 0b00001111

//Inverted
let invertedBits = ~initialBits
print(invertedBits)


let first: UInt8 = 0b00001111
let second: UInt8 = 0b11110000

//AND
let finalOR = first | second

//OR
let finalAND = first & second

let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101

//XOR
let outputBits = firstBits ^ otherBits


//Shift

//Left shift
let shiftBits: UInt8 = 2
shiftBits << 1
shiftBits << 2
shiftBits << 3
shiftBits << 4
shiftBits << 5
shiftBits << 6
shiftBits << 7

//Right Shift
let rightShiftBits: UInt8 = 128
rightShiftBits >> 1
rightShiftBits >> 2
rightShiftBits >> 3
rightShiftBits >> 4
rightShiftBits >> 5
rightShiftBits >> 6
rightShiftBits >> 7

Int8.max
Int16.max
Int32.max
Int64.max
Int.max

//Overflow operator

var unsignedOverflow = UInt8.max
unsignedOverflow &+= 1
unsignedOverflow &-= 1
unsignedOverflow &*= 1
