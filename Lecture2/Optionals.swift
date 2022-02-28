// Optionals

var j: Int? = 5
j = nil // No compiler error!
// print(j) // nill

// Unwrapping Optionals

var x:Int = 5
var y: Int? = 5
// x = 5 + y // Compiler error!
x = 5 + y! // No Compiler error!
print(x) // 10

// Optional Binding

if y != nil {
    x = 5 + y!
    print(x) // 10
}

if let y = y {
    x = 5 + y
    print(x) // 10
}

// Implicit Unwrapped Optionals

var m: Int! = 5
m = nil //No compiler error!
// var z = 5 + m //No compiler error!
// print(z)