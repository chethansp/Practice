import UIKit

//@main
struct MyStruct {
     static func main() {
        print("TEST ANNOTATION HERE")
    }
    
    @inlinable func printHere()  {
        print("PrintHere")
    }
}


class TestHere{
    @nonobjc func here()  {
    }
}

let t = MyStruct()
t.printHere()

let a = TestHere()
a.here()


//@NSApplicationMain
//Represent app delegate class.


//@NSCopying

class Person {
  @NSCopying var attributes: Attributes = Attributes()
}

class Attributes: NSCopying {

    func copy(with zone: NSZone? = nil) -> Any {
        print("NSCOPYOING ATTRIBUTE HERE")
        let attribute = Attributes()
        attribute.height = height
        attribute.weight = weight
        return attribute
    }

    var height: CGFloat = 180.0
    var weight: CGFloat = 80.0
}

let initialAttribute = Attributes()
initialAttribute.height = 100
let person = Person()
person.attributes = initialAttribute
print(person.attributes.height) // Prints 100
initialAttribute.height = 40
print(person.attributes.height) // Prints 100
print(initialAttribute.height) // Prints 100


//@NSManaged

//@objc

//Swift can inherit objective-c protocol
//But objective-c can't able to inherit swift protocol

@objc protocol Test{
    func testHere()
}

protocol AnotherTest: Test {
    func anotherTest()
}

//It will make all the members available for objective-c code.
@objcMembers class ObjectiveCTest {
    var value: Int = 0
}

//It will make selected members available for objective-c code.
@objc class AnotherObjectiveCTest: NSObject {
    @objc var value: Int = 0
    @objc var name: String = "test"
}


//propertyWrapper






