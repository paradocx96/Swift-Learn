// FOR LOOP

for i in 1...5 {
    print(i)
}

var itemArray = ["Item 1", "Item 2", "Item 3"]
for item in itemArray {
    print(item)
}

var levelDict = ["Level 1": 1, "Level 2": 2, "Level 3": 3]
for (levelName, levelNumber) in levelDict {
    print("\(levelName) => \(levelNumber)")
}

// WHILE LOOP

var alive = true
var playerLives = 3

while alive {
    playerLives -= 1
    if playerLives <= 0 {
        alive = false
    }
    print("It's alive!")
}

// SWITCH STATEMENT

// Using Numbers
var catLives = 9
switch catLives { 
    case 1:
    print("I need to be careful here")
    case 2...5:
    print("I can take some risks")
    case 6..<9:
    print("I'm pretty comfortable here")
    case 9:
    print("Fully loaded")
    default:
    print("Too many risks")
}

// Matching with letters
var compoundCaseCheck = "h"
switch compoundCaseCheck {
    case "h", "H":
    print("Hit!")
    default:
    print("No match found")
}

// Using tuples
var tupleCheck = ("Hello World", 23)
switch tupleCheck {
    case ("Hello World", 20):
    print("Not it")
    case ("Hello World", 23):
    print("Got one!")
    default:
    print("Nothing here")
}

// Using enums
enum PlayerState {
    case Alive
    case KO(restartLevel: Int)

    var message: String {
        switch self {
            case .Alive:
            return "Phew, I made it"
            case .KO(let restartLevel):
            return "Back to \(restartLevel)"
        }
    }
}

var playerState = PlayerState.KO(restartLevel: 1)
print(playerState.message)

var playerState2 = PlayerState.Alive
print(playerState2.message)

// EXTENSIONS

extension String {
    func AddDebug() -> String {
        return "DEBUG LOG: \(self)"
    }
}

let regularString = "Connection Error"
print(regularString.AddDebug())

// PROTOCOLS

protocol PUser {
    var firstName: String {get}
    var lastName: String {get set}

    func CreateFullName() -> String
}

extension PUser {
    func CreateFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}

struct User: PUser {
    var firstName: String
    var lastName: String
}

var newUser = User(firstName: "Harrison", lastName: "Ferrone")
print(newUser.CreateFullName())

// OPTIONAL

// Without Optional
// var i: Int = 5
// i = nil

// With Optional
var i: Int? = 5
i = nil

// let x: Int? = 10
// x = nil

// can use both constants and variables with optional binding.

let value: Int? = 17
let banana: Int = value!
print(banana)

let value2: Int? = nil
let banana2: Int = value2!
print(banana2)
// This gets Error => Fatal error: Unexpectedly found nil while unwrapping an Optional value

// Better way to assign value to the banana constant

