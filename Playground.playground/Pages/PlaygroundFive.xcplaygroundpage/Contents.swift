// Generics

struct Box<Element> where Element: Hashable {
    var element: Element
}

let intValue = Box(element: 1)
intValue.element

let stringValue = Box(element: "Test")
stringValue.element

struct EmptyStruct: Hashable { }

let structValue = Box(element: EmptyStruct())
structValue.element

struct TwoBoxes<E1, E2> {
    var element1: E1
    var element2: E2
}

let value = TwoBoxes(element1: 1, element2: "One")
value.element1
value.element2

// Generic function to see whether an element is in an Array

func exists<T: Equatable>(item:T, inArray:[T]) -> Bool {
    
    var index:Int = 0
    var found = false
    
    while (index < inArray.count && found == false) {
        if item == inArray[index] {
            found = true
        } else {
            index = index + 1
        }
    }
    return found
}

let myFriends:[String] = ["John", "Dave", "Jim"]
 
let isOneOfMyFriends = exists(item: "Dave", inArray: myFriends)
// returns true
 
let isOneOfMyFriends1 = exists(item: "Laura", inArray: myFriends)
// returns false
 
let myNumbers:[Int] = [1,2,3,4,5,6]
 
let isOneOfMyNumbers = exists(item: 3, inArray: myNumbers)
// returns true
 
let isOneOfMyNumbers1 = exists(item: 0, inArray: myNumbers)
// returns false
 
let myNumbersFloat:[Float] = [1.0,2.0,3.0,4.0,5.0,6.0,]
 
let isOneOfMyFloatNumbers = exists(item: 3.0000, inArray: myNumbersFloat)


//Custom types and generics
class Person : Equatable {
    var name:String
    var weight:Int
    var sex:String
    
    init(weight:Int, name:String, sex:String) {
        self.weight = weight
        self.name = name
        self.sex = sex
    }
    
    // Conforms to Equatable
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.weight == rhs.weight &&
            lhs.name == rhs.name &&
            lhs.sex == rhs.sex
    }
}
 
let Jim = Person(weight: 180, name: "Jim Patterson", sex: "M")
let Sam = Person(weight: 120, name: "Sam Patterson", sex: "F")
let Sara = Person(weight: 115, name: "Sara Lewis", sex: "F")
 
let basicPersons = [Jim, Sam, Sara]
 
let isSamABasicPerson = exists(item: Sam, inArray: basicPersons)
