// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
print(addTwoInts(1, 2)) // Output: 3

func addTwoIntsOther1(firstInt a: Int, secondInt b: Int) -> Int {
    return a + b
}
print(addTwoIntsOther1(firstInt: 1, secondInt: 2)) // Output: 3

func addTwoIntsOther2(_ a: Int, secondInt b: Int) -> Int {
    return a + b
}
print(addTwoIntsOther2(1, secondInt: 2)) // Output: 3

// ##############################################
// making function using function
var mathFunction: (Int, Int) -> Int = addTwoInts
print(mathFunction(2, 3)) // Output: 5

// ##############################################
// function as parameter
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// ##############################################
// function as the return type of another function
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var value = 3
let moveNearerToZero = chooseStepFunction(backward: value > 0)
// moveNearerToZero now refers to the stepBackward() function

while value != 0 {
    print("\(value)... ")
    value = moveNearerToZero(value)
}
// 3... 
// 2... 
// 1... 

// ##############################################
// Nested Functions

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward(input: Int) -> Int {
        return input - 1
    }

    return backward ? stepBackward : stepForward
}

var value2 = 10
let moveNearerToZero2 = chooseStepFunction2(backward: value2 > 0)(value2)
print(moveNearerToZero2) // Output: 9

var value3 = -10
let moveNearerToZero3 = chooseStepFunction2(backward: value3 > 0)(value3)
print(moveNearerToZero3) // Output: -9
