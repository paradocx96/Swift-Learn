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

// ##############################################
// define enum 
enum Season {  
  // define enum values
  case spring, summer, autumn, winter
}

// create enum variable
var currentSeason: Season

// assign value to enum variable
currentSeason = Season.summer

print("Current Season:", currentSeason) // Output: "Current Season: summer"

// ##############################################
enum PizzaSize {
  case small, medium, large
}

var size = PizzaSize.medium

switch(size) {
    case .small:
    print("I ordered a small size pizza.")

    case .medium:
    print("I ordered a medium size pizza.")

    case .large:
    print("I ordered a large size pizza.");
} // Output: "I ordered a medium size pizza."

// ##############################################
// conform Languages to caseIterable 
enum Season: CaseIterable {
  case spring, summer, autumn, winter 
}

// for loop to iterate over all cases
for currentSeason in Season.allCases {
  print(currentSeason)
} // Output: "spring", "summer", "autumn", "winter"
