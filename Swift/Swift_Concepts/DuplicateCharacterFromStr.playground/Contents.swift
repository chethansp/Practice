import UIKit

//var str = "Hello, playground"
var str = "kannada"

var characterSet: Set<Character> = Set<Character>()
for character in str {
    
    if characterSet.contains(character) {
        print(character)
    } else {
        characterSet.insert(character)
    }
}
