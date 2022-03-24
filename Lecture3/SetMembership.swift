// Set Membership

// The Set exposes methods to test for equality and membership

/*
== - tests whether the values contained in both sets are all the same

isSubset(of:) - checks whether the values from a set are contained in the other set

isStrictSubset(of:) - returns true if the other set contains all the values from the set, but the sets are not equal

isSuperset(of:) - checks whether the set contains all the values from the other set

isStrictSuperset(of:) - checks whether the set has all the elements contained in the other set, but the sets are not equal

isDisjoint(with:) - call to find out whether the two sets have no elements in common
*/

// ##########################################################################
let numbers: Set = [0, 1, 2, 3, 4, 5]
let otherNumbers: Set = [5, 4, 3, 2, 1, 0]
let oddNumbers: Set = [1, 3, 5]

if numbers == otherNumbers {
    print("\(numbers.sorted()) and \(otherNumbers.sorted()) contain the same values")
}
// Prints: [4, 5, 2, 0, 1, 3] and [5, 0, 2, 4, 3, 1] contain the same values

// ##########################################################################
// Subset

if oddNumbers.isSubset(of: numbers) {
    print("\(oddNumbers.sorted()) is subset of \(numbers.sorted())")
}
// Prints: [1, 3, 5] is subset of [0, 1, 2, 3, 4, 5]

// ##########################################################################
// Superset

if numbers.isSuperset(of: oddNumbers) {
print("\(numbers.sorted()) is superset of \(oddNumbers.sorted())")
}
// Prints: [0, 1, 2, 3, 4, 5] is superset of [1, 3, 5]

// ##########################################################################
// Disjoint

let primeNumbers: Set = [2, 3, 5]
let otherPrimeNumbers: Set = [11, 13, 17]

if primeNumbers.isDisjoint(with: otherPrimeNumbers) {
    print("\(primeNumbers.sorted()) has no values in common with \(otherPrimeNumbers.sorted())")
}
// Prints: [11, 13, 17, 19, 23] has no values in common with [11, 13, 17]
