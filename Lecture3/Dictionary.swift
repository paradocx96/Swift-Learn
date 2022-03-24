// Dictionaries

var numbersDictionary0 = Dictionary<Int, String>()
var numbersDictionary1 = [Int: String]()
var numbersDictionary2 = [0: "Zero", 1: "One", 10: "Ten"]

var mixedMap0: [AnyHashable: Any] = [0: "Zero", "pi": 3.14, "Array": numbersDictionary2]
print(mixedMap0) // Output: [AnyHashable(0): "Zero", AnyHashable("pi"): 3.1400000000000001]
print(mixedMap0["Array"]!) // Output: Optional([0: "Zero", 1: "One", 10: "Ten"])
print(mixedMap0["pi"]!) // Output: 3.14
print(mixedMap0[0]!) // Output: "Zero"
print(mixedMap0[0] ?? "Not found") // Output: "Zero"

var mixedMap1 = [0: "Zero", "pi": 10.2, 5.2: 500] as [AnyHashable: Any]

var mixedMap3 = [ 
    AnyHashable(0): "Zero" as Any,
    AnyHashable(1): 1.0 as Any,
    AnyHashable("pi"): 3.14 as Any
]

var numbersDictionary = [0: "Zero", 1: "One", 10: "Ten"]

if let ten = numbersDictionary[10] {
    print(ten) // Output: Ten
}

for (key, value) in numbersDictionary {
    print("\(key): \(value)") // Output: 0: Zero, 1: One, 10: Ten
}

for key in numbersDictionary.keys {
    print(key) // Output: 0, 1, 10
}

for value in numbersDictionary.values {
    print(value) // Output: Zero, One, Ten
}

var numbersDictionary4 = [0: "Zero", 1: "One", 10: "Ten"]
numbersDictionary4[2] = "Two"
print(numbersDictionary4) // Prints: [10: "Ten", 2: "Two", 0: "Zero", 1: "One"]

numbersDictionary4[2] = "Twoo"
print(numbersDictionary4) // Prints: [10: "Ten", 2: "Twoo", 0: "Zero", 1: "One"]

numbersDictionary4[1] = nil
print(numbersDictionary4) // Prints: [10: "Ten", 2: "Two", 0: "Zero"] and not added

numbersDictionary4.removeValue(forKey: 2)
print(numbersDictionary4) // Prints: [10: "Ten", 0: "Zero"]
