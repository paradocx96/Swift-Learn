// Protocol

class TestClass {
    var i = 3
}

protocol TestProtocol {
    func protocolFunction()
}

extension TestClass: TestProtocol {
    func protocolFunction() {
        print("protocol function")
    }
}

let test = TestClass()
test.protocolFunction()

