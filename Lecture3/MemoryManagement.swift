// Memory Management

// ARC(Automatic Reference Counting) Handles most of the memory management

class TestClass {
    init() {
        print("init")
    }
    
    deinit {
        print("deinit")
    }
}

var testClass: TestClass? = TestClass()
testClass = nil
