// #########################################################################################################
// ~ Arrays ~

/*  Arrays store values of the same type in a specific order
    Values must not be unique
    Swift implements arrays as generic types
    instances of classes, structs, enumerations, or any built-in type like Int, Float, Double, etc.
*/

let numbers: Array<Int> = [0, 2, 1, 3, 1, 42]
let numbers1: [Int] = [0, 2, 1, 3, 1, 42]
let numbers2 = [0, 2, 1, 3, 1, 42]

// Mutable Arrays
// If we want to modify the array after its creation, we must assign it to a variable rather than a constant

var mutableNumbers = [0, 2, 1, 3, 1, 42]
mutableNumbers.append(11)
print(mutableNumbers) // Output: [0, 2, 1, 3, 1, 42, 11]

/*  When using insert(at:) or remove(at:), if the index is invalid, a runtime error occurs.
    The gap is closed whenever we remove elements from the array
*/

mutableNumbers.insert(100, at: 2)
print(mutableNumbers) // Output: [0, 2, 100, 1, 3, 1, 42, 11]

mutableNumbers.remove(at: 2)
print(mutableNumbers) // Output: [0, 2, 1, 3, 1, 42, 11]

mutableNumbers.removeAll()
print(mutableNumbers) // Output: []
