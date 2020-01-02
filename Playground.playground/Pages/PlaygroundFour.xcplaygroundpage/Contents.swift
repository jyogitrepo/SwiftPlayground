// Enum

enum Direction {
    case east
    case west
    case north
    case south
}

let direction: Direction = .west

enum DirectionString: String  {
    case east
    case west
    case north
    case south
}

let directionString: DirectionString = .east
directionString.rawValue // RawRepresentable protocol

enum DirectionInt: Int {
    case east
    case west
    case north
    case south
}

let directionInt: DirectionInt = .east
directionInt.rawValue
DirectionInt.west.rawValue
DirectionInt.north.rawValue
