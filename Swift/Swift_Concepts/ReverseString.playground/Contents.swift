import UIKit

var str = "Hello, playground"
var reverseStr = ""


for character in str {
    reverseStr = String(character) + reverseStr
}

print(reverseStr)

//Reverse String
print(String(str.reversed()))

String()
