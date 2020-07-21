import UIKit

class Painting {
    var title: String
    var artist: String
    var paintType: String
    
    init(title: String, artist: String, paintType: String) {
        self.title = title
        self.artist = artist
        self.paintType = paintType
    }
}

class TIE {
    var name: String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
let interceptor = TIE(name: "TIE Interceptor", speed: 70)
