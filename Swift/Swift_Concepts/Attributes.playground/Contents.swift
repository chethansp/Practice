import UIKit


@available(iOS, introduced: 10.0, message: "Is deprecated", renamed: "sds" )
func test(){
    print("Test here")
}


// First release
protocol MyProtocol {
    // protocol definition
}

// Subsequent release renames MyProtocol
protocol MyRenamedProtocol {
    // protocol definition
}

@available(*, unavailable, renamed: "MyRenamedProtocol")
typealias TestProtocol = MyRenamedProtocol

//@available

//@discardableResult

//@dynamicCallable

//@dynamicMemberLookup

//@frozen

//@inlinable

//@main

//@UIApplication

//@NSApplicationMain

//@NSCopying

//@NSManaged

//@objc

//@objcMembers

//@propertyWrapper

//@testable

//@requires_stored_property_inits

//@usableFromInline

//@warn_unqualified_access

//@IBOutlet
//@IBAction
//@IBSegueAction
//@IBDesignable
//@IBInspectable

//@autoclosure
//@convention
//@escaping

//@unknown

