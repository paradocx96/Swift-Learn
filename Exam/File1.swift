var greeting = "Hello, playground"
print(greeting)

greeting = "Hi"
print(greeting)

let number1 = 10 // constant -> Cannot be changed
print(number1)

var number2 = 0 // variable consume a lot of memory in bigger applications
print(number2)

//Type annotations
var x = 5 // x annotates as Int when assigning an Integer value -> type inference
var y: Int
y = 8
print(y)

let n0 = 8.9
print(n0)

let n1: Int = 8
print(n1)

var numi, num2, num3 : Double // defining multiple variables

//Type safe and type inference
let pi = 3 + 0.14159 // pi is infered to be type of Double
print(pi)

// Type conversion
let three = 3
let z = Double(three) + 0.1412
print(z)

var message = "5"
let newMessage = Int(message)
print(newMessage ?? "")

let a = String(4)
print(a)

let multiplier = 3
let message1 = "\(multiplier) times 2.5 is \(Double (multiplier) * 2.5)"
print(message1)

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
