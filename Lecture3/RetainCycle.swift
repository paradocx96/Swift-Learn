import Foundation

// Retain Cycle

// Strong Reference will cause a retain cycle makes memory leak
// Weak reference used weak keyword (It will reduce memory leak)
// Unowned reference used unowned keyword (It will reduce memory leak)
// Generally speaking it’s always safer to use weak instead of unowned

class TestClass {
    var testClass: TestClass? = nil
    // weak var testClass: TestClass? = nil
    // unowned var testClass: TestClass? = nil
    // unowned let image:UIImage? = nil

    init() {
        print("init")
    }

    deinit {
        print("deinit")
    }
}

var testClass1: TestClass? = TestClass()
var testClass2: TestClass? = TestClass()

testClass1?.testClass = testClass2
testClass2?.testClass = testClass1

testClass1 = nil
testClass2 = nil

// Unowned Reference
// Example:
//let image:UIImage = UIImage.init(named: "") ?? UIImage.init()