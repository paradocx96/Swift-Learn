// Exercise
// #2

class Calculator {
    var num1: Int = 0
    var num2: Int = 0

    init(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }

    func sum() -> Int {
        return num1 + num2
    }
}

let calculator = Calculator(num1: 10, num2: 20)
print(calculator.sum())

