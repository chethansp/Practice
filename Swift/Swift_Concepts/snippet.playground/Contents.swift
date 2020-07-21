enum Test {
    case A
    case B
    case C
}

let test = Test.B

switch test {
    
case .A:
    print("2")
    
@unknown default :
    print("default unknown")
}
