//Optional

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

print("----------------")

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

optionalInt = 5
testGuard()
