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

