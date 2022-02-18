// Exercise
// #5

class Check {
    var num1: Int = 0
    var num2: Int = 0

    init(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }

    func check() -> Bool {
        if num1 == 20 || num2 == 20 || num1 + num2 == 20 {
            return true
        } else {
            return false
        }
    }
}

let check = Check(num1: 10, num2: 10)
print("Result : \(check.check())")

/* #################################################################################### */

func checkNumber(num1: Int, num2: Int) -> Bool {
    if num1 == 20 || num2 == 20 || num1 + num2 == 20 {
        return true
    } else {
        return false
    }
}

print("Result : \(checkNumber(num1: 10, num2: 10))")
