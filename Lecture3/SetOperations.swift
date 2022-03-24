// ##########################################################################
// Set Operations: Union

let primeNumbers: Set = [11, 13, 17, 19, 23]
let oddNumbers: Set = [11, 13, 15, 17]

let union = primeNumbers.union(oddNumbers)
print(union.sorted()) // Output: [11, 13, 15, 17, 19, 23]

// [11, 13, 17, 19, 23] ∪ [11, 13, 15, 17] = [11, 13, 13, 15, 17, 17, 19, 23]
// After removing the duplicates, the result is [11, 13, 15, 17, 19, 23]

// ##########################################################################
// Set Operations: Intersect

let intersection = primeNumbers.intersection(oddNumbers)
print(intersection.sorted()) // Output: [11, 13, 17]

// [11, 13, 17, 19, 23] ∩ [11, 13, 15, 17] = [11, 13, 17]

// ##########################################################################
// Set Operations: Symmetric Difference

let symmetricDiff = primeNumbers.symmetricDifference(oddNumbers)
print(symmetricDiff.sorted()) // Output: [15, 19, 23]

// [11, 13, 17, 19, 23] ∆ [11, 13, 15, 17] = [15, 19, 23]

// ##########################################################################
// Set Operations: Subtract

let subtractOddFromPrimes = primeNumbers.subtracting(oddNumbers)
print(subtractOddFromPrimes) // Output: [19, 23]

// [11, 13, 17, 19, 23] ∖ [11, 13, 15, 17] = [19, 23]

let subtractPrimesFromOdds = oddNumbers.subtracting(primeNumbers)
print(subtractPrimesFromOdds) // Output: [15]

// [11, 13, 15, 17] ∖ [11, 13, 17, 19, 23] = [15]
