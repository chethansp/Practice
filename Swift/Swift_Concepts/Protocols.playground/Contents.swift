import UIKit

protocol Swimable {
    var depth: Int  { get }
}


protocol Purchasable {
    var price: Double {get set}
    var Currency: Double {get set}
}

protocol Test {
    var price: Int { get }
}

protocol Buildable {
    var numberOfBricks: Int { get set }
    var materials: [String] { get }
}


