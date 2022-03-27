// Closures

// Closure take no parameter and return nothing
let sayHello: () -> Void = {
    print("Hello")
}

sayHello() // Output: Hello

// Closure take one parameter and return 1 parameter
let value: (Int) -> Int = { (value1) in
    return value1
}

print(value(5)) // Output: 5

// Closure take two parameter and return 1 parameter
let add: (Int, Int) -> Int = { (value1, value2) in
    return value1 + value2
}

print(add(5, 4)) // Output: 9

// Closure take two parameter and return two parameter
let add4: (Int, Int) -> (Int, Double) = {
    return (($0 + $1), Double($0 + $1))
}

print(add4(5, 4)) // Output: (9, 9.0)

// Shorthand Argument Names
let add2: (Int, Int) -> Int = {
    return $0 + $1
}

print(add2(5, 4)) // Output: 9

// Single-expression closures can implicitly return the result of their single
// expression by omitting the return keyword from their declaration
// NOTE: For a multiline expression closure, return keyword can’t be omitted.
let add3: (Int, Int) -> Int = { $0 + $1 }
print(add3(5, 4)) // Output: 9

