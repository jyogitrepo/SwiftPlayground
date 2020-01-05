//Closure

var test = {
    print("Test")
}

test()

var anotherTest = { (first: String, second: String) in
    print(first)
    print(second)
}

anotherTest("Hi", "Hello")

var add =  { (first: Int, second: Int) -> Int in
    return first + second
}

add(10, 20)
add(20, 20)

var anotherAdd =  { (num1: Double, num2: Double) in
    return num1 + num2
}

anotherAdd(20.0, 30.0)

//It is always possible to infer the parameter types and return type when passing a closure to a function or method as an inline closure expression. As a result, you never need to write an inline closure in its fullest form when the closure is used as a function or method argument.

// Trailing Closures

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}
