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
