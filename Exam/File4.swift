// ####################################
// Extensions
extension Int {
    func calculateDouble() -> Int {
        return 2 * self
    }
}

var someInt = 3
print(someInt.calculateDouble()) // 6

// ####################################
extension Int {
    mutating func double() {
        self = self * 2
    }
}

var someInt2 = 3
someInt2.double()
print(someInt2) //6

// ####################################
class TestClass {
    var i = 3
}

extension TestClass {
    func demoFunction(){
        print("i is equal to \(i)")
    }

    var demoComputeValue: Int {
        get {
            return 10
        }
        set {
            print("\(newValue)")
        }
    }
}

let test = TestClass()
test.demoFunction() // i is equal to 3
print(test.demoComputeValue) // 10
test.demoComputeValue = 20 // 20
print(test.demoComputeValue) // 10

// ####################################
// Protocol
class TestClass2 {
    var i = 3
}

protocol TestProtocol {
    func protocolFunction()
}

extension TestClass2: TestProtocol {
    func protocolFunction() {
        print("protocol function")
    }
}

let test2 = TestClass2()
test2.protocolFunction()

