// Guard

var optionalInt: Int?
var optionalString: String?

func testGuard() {
    guard let tempInt = optionalInt,
           let tempString = optionalString else {
            print("tempInt/tempString is nil")
            return // always needed in guard or throw
    }
    print(tempInt)
    print(tempString)
}

testGuard()

optionalInt = 10

testGuard()

optionalString = "string"

testGuard()

print()

// Equivalent to testGuard()
func testAnotherGuard() {
    guard optionalInt != nil,
           optionalString != nil else {
            print("testAnotherGuard: tempInt/tempString is nil")
            return // always needed in guard or throw
    }
    print("testAnotherGuard \(optionalInt!)")
    print("testAnotherGuard \(optionalString!)")
}

testAnotherGuard()
optionalInt = nil
testAnotherGuard()
