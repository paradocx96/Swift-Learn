let immutable = "You cannot modify this string"
var mutable = "You can modify this string"
print(immutable) // Output: "You cannot modify this string"
print(mutable) // Output: "You can modify this string"

// Join two strings together using + operator
let firstMessage = "Swift is nice."
let secondMessage = "What do you think?"
var message = firstMessage + secondMessage
print(message) // Output: Swift is nice.What do you think?

// ~ String Interpolation ~
print("Hello, \(message)") // Output: Hello, Swift is nice.What do you think?

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
print(appleSummary) //Output: I have 3 apples.

let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(fruitSummary) //Output: I have 8 pieces of fruit.