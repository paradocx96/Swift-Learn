var greeting = "Hello, playground"
greeting = "Hi"

let number1 = 10 // constant -> Cannot be changed
var number2 = 0 // variable consume a lot of memory in bigger applications

//Type annotations
var x = 5 // x annotates as Int when assigning an Integer value -> type inference
var y: Int
y = 8

let n0 = 8.9
let n1: Int = 8

var numi, num2, num3 : Double // defining multiple variables

//Type safe and type inference
let pi = 3 + 0.14159 // pi is infered to be type of Double

/* type inference -> useful when you declare a constant or variable with an initial value.
This is done by assigning a literal value to the constant or variable */

/* type safe -> Swift performs type checks when compiling your code 
and flags any mismatched types as errors*/

// Type conversion
let three = 3
let z = Double(three) + 0.1412

var message = "5"
let newMessage = Int(message)
let a = String(4)

/*String Interpolation -> the way to construct a new string value from a mix of 
constants, variables, literals and expressions inside a string literal */
let multiplier = 3
let message1 = "\(multiplier) times 2.5 is \(Double (multiplier) * 2.5)"

// Boolean
let ans: Bool
let value1 = 2
ans = (value1 == 2)
if ans {
    print("Hello")
}
else {
    print("Goodbye")
}
