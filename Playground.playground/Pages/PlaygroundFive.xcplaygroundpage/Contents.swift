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


