import UIKit

var str = "ABCDEEDCBA"

var endIndex = str.index(str.endIndex, offsetBy: -1)
str[endIndex]

endIndex = str.index(before: endIndex)
str[endIndex]

endIndex = str.index(before: endIndex)
str[endIndex]

endIndex = str.index(before: endIndex)
str[endIndex]

endIndex = str.index(before: endIndex)
str[endIndex]

endIndex = str.index(before: endIndex)
str[endIndex]

endIndex = str.index(before: endIndex)
str[endIndex]

var start = str.startIndex
var end = str.index(str.endIndex, offsetBy: -1)

var found = true
while (start < end) {
    if str[start] == str[end] {
        start = str.index(after: start)
        end = str.index(before: end)
    } else {
        found = false
        break
    }
}

if found {
    print("PALINDROME")
} else {
    print("NOT PALINDROME")
}

let a1 = str.index(before: str.endIndex)
let a2 = str.index(after: str.startIndex)
let a3 = str.index(a2, offsetBy: 3)

let a4 = str.index(str.startIndex,
                   offsetBy: 14,
                   limitedBy: endIndex)

str[a4 ?? str.startIndex]
