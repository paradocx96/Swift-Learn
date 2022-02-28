import Foundation

// GENERICS

struct StringPair {
    var first: String
    var second: String
}

struct IntPair {
    var first: Int
    var second: Int
}

struct FloatPair {
    var first: Float
    var second: Float
}

struct StringDoublePair {
    var first: String
    var second: Double
}

let stringPair = StringPair(first: "First", second: "Second")
print(stringPair) // StringPair(first: "First", second: “Second")

let intPair = IntPair(first: 1, second: 2)
print(intPair) // IntPair(first: 1, second: 2)

let floatPair = FloatPair(first: 1.0, second: 2.0)
print(floatPair) // FloatPair(first: 1.0, second: 2.0)

let stringDoublePair = StringDoublePair(first: "First", second: 42.5)
print(stringDoublePair) // StringDoublePair(first: "First", second: 42.5)

// Instead of providing the concrete types of the properties in the structure, we use placeholders: T1 and T2.

struct Pair<T1, T2> {
    var first: T1
    var second: T2
}

let floatFloatPair = Pair<Float, Float>(first: 0.3, second: 0.5)
print(floatFloatPair) // Pair<Float, Float>(first: 0.300000012, second: 0.5)

let stringAndString = Pair(first: "First String", second: "Second String")
print(stringAndString) // Pair<String, String>(first: "First String", second: "Second String")

let stringAndDouble = Pair(first: "I'm a String", second: 99.99)
print(stringAndDouble) // Pair<String, Double>(first: "I\'m a String", second: 99.989999999999995)

let intAndDate = Pair(first: 42, second: Date())
print(intAndDate) // Pair<Int, Date>(first: 42, second: 2022-02-28 20:58:06 +0000)

