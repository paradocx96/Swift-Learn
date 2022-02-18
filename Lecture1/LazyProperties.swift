// Lazy Properties
class TestClass {
    lazy var testString: String = "Testing Word"
}

let testClass = TestClass()
print(testClass.testString)

// Lazy Properties
class TestClass2 {
    lazy var testString: String = {
        print("about to initialize the property")
        return "TestString"
    }()
}

let testClass2 = TestClass2()
print("before first call")
print(testClass2.testString)
print(testClass2.testString)

