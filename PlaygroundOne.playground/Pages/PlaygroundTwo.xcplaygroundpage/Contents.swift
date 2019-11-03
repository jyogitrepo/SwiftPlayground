import Foundation

var age = 18
let dob = "20/11/1920"

var integer: Int = 18
var double: Double = 20.50
var character: Character = "C"
var boolean: Bool = false
var string: String = "String"
string.count

var optionalInt: Int?
optionalInt = 100

//print(optionalInt)
print(optionalInt!)
print(optionalInt ?? "nil")

if let tempInt = optionalInt {
    print(tempInt) // tempInt only accessible inside
}

if optionalInt != nil {
    print(optionalInt)
}

func testGuard() {
    guard let tempInt = optionalInt else {
        print("optionalInt is nil")
        return
    }
    print("Value is \(tempInt)")
}

testGuard()
optionalInt = nil
testGuard()



