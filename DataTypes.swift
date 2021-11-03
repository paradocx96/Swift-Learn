// ~ Data Types in SWIFT ~

// Integer
// Floating point (Float and Double)
// Boolean (true and false)
// Character
// String

// \n => New line
// \t => Tab
// \" => Double quote


// ~ Type Safe ~
// Swift is a type-safe language. 
// It performs type checks when compiling your code and flags any mismatched types as errors.
// This enables us to catch errors as early as possible in development process.

// ~ Type Inference ~
// Useful when you declare a constant or variable with an initial value.
// This is done by assigning a literal value to the constant or variable. 

let sampleValue = 50 // sampleValue is inferred to be of type Int.
let pi = 3.14159 // pi is inferred to be of type Double.

// Swift always chooses "Double" when inferring the type of floating-point numbers.
let val = 3 + 0.14159 // val is also inferred to be of type Double


// ~ Boolean Logical Operators ~
// ! (Not)
// && (And)
// || (Or)
// Condition ? true expression : false expression (Ternary Conditional Operator)

let x = 10
let y = 20
print("Largest number is \(x > y ? x : y)") // Output: 20