// Protocols

protocol Addable {
    associatedtype Value // placeholder type
    func add(value1: Value, value2: Value) -> Value
}

struct IntAdd: Addable {
    func add(value1: Int, value2: Int) -> Int {
        return value1 + value2
    }
}

struct StringAdd: Addable {
    func add(value1: String, value2: String) -> String {
        return value1 + value2
    }
}

let intAdd = IntAdd().add(value1:1, value2:2)
let stringAdd = StringAdd().add(value1:"One ", value2:"Two")

// Same using Generics

protocol GenericAdd {
    static func +(_ value1: Self, _ value2: Self) -> Self // This is needed to apply + operator in value1 + value2
}

extension Int: GenericAdd {}
extension String: GenericAdd {}

struct Add<Value> where Value: GenericAdd {
    func add(value1: Value, value2: Value) -> Value {
        print(value1)
        print(value2)
        return value1 + value2
    }
}
let genericIntadd = Add().add(value1: 1, value2: 3)
let genericStringadd = Add().add(value1: "4", value2: "5")
