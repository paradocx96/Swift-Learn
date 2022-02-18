// Type Properties

class TestClass {
    static var testString: String = "TestString"
}

print("\(TestClass.testString)")


class Triangle {
    static var sides = 3 // static property

    class var sideTobeOverridden: Int { // class type property
        return 3
    }
}

// because of "Type properties", can directly access to the properties inside the class through the class name
var triangleSide1 = Triangle.sides // return 3
var triangleSide2 = Triangle.sideTobeOverridden // return 3
print("\(triangleSide1)")
print("\(triangleSide2)")

class Octagon: Triangle { // Inheritance
    class var sideTobeoverridden: Int {
        return 8
    }
}

var octagonSides = Octagon.sideTobeoverridden // return 8
print("\(octagonSides)")

