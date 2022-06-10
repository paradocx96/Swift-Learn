// ##############################################
// Collection Types
// ##############################################
// Array

let numbers0: Array<Int> = [0, 2, 1, 3, 1, 42]
let numbers1: [Int] = [0, 2, 1, 3, 1, 42]
let numbers2 = [0, 2, 1, 3, 1, 42]

var mutableNumbers = [0, 2, 1, 3, 1, 42]

mutableNumbers.append(11)
print(mutableNumbers) // Output: [0, 2, 1, 3, 1, 42, 11]

mutableNumbers.insert(100, at: 2)
print(mutableNumbers) // Output: [0, 2, 100, 1, 3, 1, 42, 11]

mutableNumbers.remove(at: 2)
print(mutableNumbers) // Output: [0, 2, 1, 3, 1, 42, 11]

mutableNumbers.removeAll()
print(mutableNumbers) // Output: []

// ##############################################
// Sets

let uniqueNumbers: Set<Int> = [0, 2, 1, 3, 42, 1, 2]
print(uniqueNumbers) // Output: [42, 2, 0, 1, 3]

// In Array can have duplicates
let zeroesArray: Array<Int> = [0, 0, 0, 0]
print(zeroesArray) // Output: [0, 0, 0, 0]

// Sets can't have duplicates
let zeroes: Set<Int> = [0, 0, 0, 0]
print(zeroes) // Output: [0]

var mutableStringSet: Set = ["One", "Two", "Three"]
print(mutableStringSet) // Output: ["One", "Three", "Two"]

mutableStringSet.insert("Four")
print(mutableStringSet) // Output: ["Three", "Four", "One", "Two"]

mutableStringSet.remove("Three")
print(mutableStringSet) // Output: ["Two", "Four", "One"]

if let removedElement = mutableStringSet.remove("Ten") {
    print("\(removedElement) was removed from the Set")
} else {
    print("\"Ten\" not found in the Set")
}

if mutableStringSet.contains("Ten") {
    mutableStringSet.remove("Ten")
} else {
    print("\"Ten\" not found in the Set")
}

// ##############################################
// Hashable Value

struct Person: Hashable {
    var id: Int
    var name: String
    
    public var hashValue: Int {
        return id.hashValue
    }

    public static func == (left: Person, right: Person) -> Bool {
        return left.id == right.id && left.name == right.name
    }
}

var people: Set = [Person(id: 1, name: "John"), Person(id: 2, name: "Jane"), Person(id: 3, name: "John")]

print(people) // Output: [HashableValue.Person(id: 2, name: "Jane"), HashableValue.Person(id: 3, name: "John"), HashableValue.Person(id: 1, name: "John")]
