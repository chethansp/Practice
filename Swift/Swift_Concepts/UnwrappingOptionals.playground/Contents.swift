func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}

let input = 5

if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}
