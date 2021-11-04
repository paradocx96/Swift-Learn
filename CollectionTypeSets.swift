// #########################################################################################################
// ~ Sets ~

/*  The Set provides no defined ordering
    A value can only appear once in a set
    The Set exposes useful methods that let us combine two sets using mathematical set operations like union and subtract
    The Set is implemented as a generic type
*/

let uniqueNumbers: Set<Int> = [0, 2, 1, 3, 42]
print(uniqueNumbers) // Output: [42, 2, 0, 1, 3]

let zeroesArray: Array<Int> = [0, 0, 0, 0]
print(zeroesArray) // Output: [0, 0, 0, 0]

let zeroes: Set<Int> = [0, 0, 0, 0]
print(zeroes) // Output: [0]

// #########################################################################################################
// Mutable Sets
// We can create mutable sets by assigning the set to a variable

var mutableStringSet: Set = ["One", "Two", "Three"]
print(mutableStringSet) // Output: ["One", "Three", "Two"]

mutableStringSet.insert("Four")
mutableStringSet.remove("Three")
print(mutableStringSet) // Output: ["Two", "Four", "One"]

/*  If the element we are about to remove is not in the list, the remove method has no effect
    The remove() method returns the element that was removed from the list
    We can use this feature to check whether the value was indeed deleted
*/

if let removedElement = mutableStringSet.remove("Ten") {
    print("\(removedElement) was removed from the Set")
} else {
    print("\"Ten\" not found in the Set")
}

// Alternatively, we could check whether the element exists using the contains() Set instance method

if mutableStringSet.contains("Ten") {
    mutableStringSet.remove("Ten")
}

// #########################################################################################################
// Set Operations

// Set Operations: Union
let primeNumbers: Set = [11, 13, 17, 19, 23]
let oddNumbers: Set = [11, 13, 15, 17]

let union = primeNumbers.union(oddNumbers)
print(union.sorted()) // Output: [11, 13, 15, 17, 19, 23]

/*
    [11, 13, 17, 19, 23] ∪ [11, 13, 15, 17] = [11, 13, 13, 15, 17, 17, 19, 23]
    
    After removing the duplicates, the result is [11, 13, 15, 17, 19, 23]
*/

// Set Operations: Intersect
let intersection = primeNumbers.intersection(oddNumbers)
print(intersection.sorted()) // Output: [11, 13, 17]

/* [11, 13, 17, 19, 23] ∩ [11, 13, 15, 17] = [11, 13, 17] */

// Set Operations: Symmetric Difference
let symmetricDiff = primeNumbers.symmetricDifference(oddNumbers)
print(symmetricDiff.sorted()) // Output: [15, 19, 23]

/* [11, 13, 17, 19, 23] ∆ [11, 13, 15, 17] = [15, 19, 23] */

// Set Operations: Subtract
let subtractOddFromPrimes = primeNumbers.subtracting(oddNumbers)
print(subtractOddFromPrimes) // Output: [19, 23]

/* [11, 13, 17, 19, 23] ∖ [11, 13, 15, 17] = [19, 23] */

let subtractPrimesFromOdds = oddNumbers.subtracting(primeNumbers)
print(subtractPrimesFromOdds) // Output: [15]

/* [11, 13, 15, 17] ∖ [11, 13, 17, 19, 23] = [15] */

// #########################################################################################################
// Set Membership Methods

// The Set exposes methods to test for equality and membership

/*
    == -> tests whether the values contained in both sets are all the same

    isSubset(of:) -> checks whether the values from a set are contained in the other set

    isStrictSubset(of:) -> returns true if the other set contains all the values from the set, but the sets are not equal

    isSuperset(of:) -> checks whether the set contains all the values from the other set

    isStrictSuperset(of:) -> checks whether the set has all the elements contained in the other set, but the sets are not equal

    isDisjoint(with:) -> call to find out whether the two sets have no elements in common
*/

let numbers: Set = [0, 1, 2, 3, 4, 5]
let otherNumbers: Set = [5, 4, 3, 2, 1, 0]
let oddNumber: Set = [1, 3, 5]
let primeNumber: Set = [2, 3, 5]
let otherPrimeNumber: Set = [11, 13, 17]

if numbers == otherNumbers {
    print("\(numbers) and \(otherNumbers) contain the same values")
}
// Prints: [4, 5, 2, 0, 1, 3] and [5, 0, 2, 4, 3, 1] contain the same values

if oddNumber.isSubset(of: numbers) {
    print("\(oddNumber.sorted()) is subset of \(numbers.sorted())")
}
// Prints: [1, 3, 5] is subset of [0, 1, 2, 3, 4, 5]

if numbers.isSuperset(of: oddNumber) {
    print("\(numbers.sorted()) is superset of \(oddNumber.sorted())")
}
// Prints: [0, 1, 2, 3, 4, 5] is superset of [1, 3, 5]

if primeNumber.isDisjoint(with: otherPrimeNumber) {
    print("\(primeNumber.sorted()) has no values in common with \(otherPrimeNumber.sorted())")
}
// Prints: [11, 13, 17, 19, 23] has no values in common with [11, 13, 17]
