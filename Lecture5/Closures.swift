import Foundation

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

// #############################################################################
// Trailing closure Example
// Following method accepts an animation duration as its first parameter, 
// and a closure containing animation instructions as its second

// UIView.animate(withDuration: 1, animations: { [unowned self] in
//     self.view.backgroundColor = UIColor.red
// })

// Swift allows you write your code like this instead, this is shorter, and avoids the double closing }) code.

// UIView.animate(withDuration: 1) { [unowned self] in
//     self.view.backgroundColor = UIColor.red
// }

// UIView.animate(withDuration: 1, animations: {
    // .........
    // ..........
// })

// // Turn into
// UIView.animate(withDuration: 1) {
    // .........
    // ..........
// }

// #############################################################################
// Escaping Closures
var number = 10

var add5: (Int) -> Int = { otherNumber in
    return number + otherNumber
}

func multiply(someNumber: Int, aclosure: @escaping (Int) -> Int) {
    print(aclosure(someNumber) * 20) // Output: 1500
}

multiply(someNumber: 65, aclosure: add5)

// #############################################################################
// Error handling

enum MyErrorType : Error {
    case SomeErrorCause
    case AnotherErrorCause
}

func testFunction() throws {
    throw MyErrorType.SomeErrorCause
}

do {
    try testFunction()
} catch {
    print("there was an error...")
}
// Output: there was an error...

do {
    try testFunction()
} catch MyErrorType.SomeErrorCause {
    print("there was an MyErrorType.SomeErrorCause-error...")
} catch MyErrorType.AnotherErrorCause {
    print("there was an MyErrorType.AnotherErrorCause-error...")
} catch {
    print("there was another error...")
}
// Output: there was an MyErrorType.SomeErrorCause-error...

// #############################################################################
// Defer Error Handling

func testFunction2() throws {
    defer {
        print("clean-up3")
    }

    defer {
        print("clean-up2")
    }

    defer {
        print("clean-up1")
    }

    throw MyErrorType.SomeErrorCause
}

do {
    try testFunction2()
} catch {
    print("there was an error...")
}

// Output: 
// clean-up1
// clean-up2
// clean-up3
// there was an error...
