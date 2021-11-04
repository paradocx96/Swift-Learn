// #########################################################################################################
// ~ Dictionaries ~

/*  Also known as hash maps
    Stores "key-value" pairs
    Allows for efficient setting and reading of values based on their unique identifiers
    The Dictionary is also implemented as a generic type
*/

// Using the initializer syntax
var numbersDictionary1 = Dictionary<Int, String>()

// Using the shorthand syntax
var numbersDictionary2 = [Int: String]()

// Using dictionary literals Swift can infer the type of the keys and the values based on the literals
var numbersDictionary3 = [0: "Zero", 1: "One", 10: "Ten"]

// Heterogeneous Dictionaries
/*  The types of the keys and the values in a dictionary are supposed to be consistent
    Ex: all keys are of type Int and all the values are of type String
    However, there are cases when we do need dictionaries with different key and value types
*/

// var mixedMap0 = [0: "Zero", "pi": 3.14]
// Compiler error

// var mixedMap1: [Any: Any] = [0: "Zero", "pi": 3.14]
// Compiler warning only

// AnyHashable
// Can hold a value of any type conforming to the Hashable protocol
var mixedMap2: [AnyHashable: Any] = [0: "Zero", 1: 1.0, "pi": 3.14]

// This is what happens behind the scenes
var mixedMap3 = [
    AnyHashable(0): "Zero" as Any, 
    AnyHashable(1): 1.0 as Any, 
    AnyHashable("pi"): 3.14 as Any]

// #########################################################################################################
// Dictionaries Example

var numbersDictionary = [0: "Zero", 1: "One", 10: "Ten"]

if let ten = numbersDictionary[10] {
    print(ten)
} // Output: Ten

for (key, value) in numbersDictionary {
    print("\(key): \(value)")
}

// The key property will return the keys stored in the dictionary
for key in numbersDictionary.keys {
    print(key)
}

// The value property will return the values stored in the dictionary
for value in numbersDictionary.values {
    print(value)
}

numbersDictionary[2] = "Two"
print(numbersDictionary) // Prints: [10: "Ten", 2: "Two", 0: "Zero", 1: "One"]

numbersDictionary[2] = "Twoo"
print(numbersDictionary) // Prints: [10: "Ten", 2: "Twoo", 0: "Zero", 1: "One"]

numbersDictionary[1] = nil
print(numbersDictionary) // Prints: [10: "Ten", 2: "Two", 0: "Zero"]

numbersDictionary.removeValue(forKey: 2)
print(numbersDictionary) // Prints: [10: "Ten", 0: "Zero"]
