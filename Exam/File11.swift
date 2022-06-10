import Foundation

// ##########################################################################
// Memory Management

// ARC(Automatic Reference Counting) Handles most of the memory management

class TestClass0 {
    init() {
        print("init")
    }
    
    deinit {
        print("deinit")
    }
}

var testClass0: TestClass0? = TestClass0() // init
print("now") // now
testClass0 = nil // deinit

// ##########################################################################
// Retain Cycle

// Strong Reference will cause a retain cycle makes memory leak
// Weak reference used weak keyword (It will reduce memory leak)
// Unowned reference used unowned keyword (It will reduce memory leak)
// Generally speaking it’s always safer to use weak instead of unowned

class TestClass {
    // var testClass: TestClass? = nil
    weak var testClass: TestClass? = nil
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
