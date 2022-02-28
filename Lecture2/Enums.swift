// Enums

enum TestEnum {
    case One
    case Two
    case Three
}

var anEnum: TestEnum
anEnum = .Three

// ##############################################

enum TestEnum2: Int {
    case One = 1
    case Two = 2
    case Three = 3
}

var anEnum2: TestEnum2
anEnum2 = .One
print("\(anEnum2.rawValue)")

// ##############################################

enum TestEnum3 {
    case One(Int)
    case Two(Int)
    case Three(Int)
}

var anEnum3: TestEnum3
anEnum3 = .One(1)
print("\(anEnum3)")

// ##############################################

enum TestEnum4 {
    case One(Int)
    case Two(Int)
    case Three(Int)
    
    func associatedValue() -> String {
        switch self {
            case let .One(number):
            return("\(number)")
            case let .Two(number):
            return("\(number)")
            case let .Three(number):
            return("\(number)")
        }
    }
}

var anEnum4: TestEnum4
anEnum4 = .One(1)
print(anEnum4.associatedValue())


