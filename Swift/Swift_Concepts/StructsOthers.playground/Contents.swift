import UIKit

var mac = "iMac"
mac.hasPrefix("i")

var superHero = "Mario"
superHero.uppercased() == "Mario"


var str = ""
for i in 1...5 {
    str += "\(i)"
}
str.count == 5

let movie = ["a", "a", "b","c"]
let index = movie.index(2, offsetBy: 4)
print(index)

var heights = [1.0, 1.2, 1.15, 1.39]
heights.remove(at: 0)
heights.count == 3

var examScores = [100, 95, 92]
examScores.insert(98, at: 0)


struct Media {
    var type: String
    var users: Int
    
    init() {
        self.type = ""
        self.users = 2
    }
    
    init(type: String) {
        self.type = type
        self.users = 22
    }
    
    init(type: String, users: Int) {
          self.type = type
          self.users = users
      }
}

let tv = Media(type: "")
let tv1 = Media(type: "", users: 2)
