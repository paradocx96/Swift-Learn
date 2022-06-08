// Stored properties
class Circle {
    var radius: Double = 0.0
}

let circle = Circle()
circle.radius = 10
print("Radius of circle is \(circle.radius)")

// **************************************************
// Stored properties Initialization
class Circle2 {
    var radius: Double
    var identifier: Int = 0
    
    init(radius: Double) {
        self.radius = radius
    }
}

var circle2 = Circle2(radius: 5)
print("Radius of circle is \(circle2.radius)")

// **************************************************
// Stored properties Initialization
class Person {
    var fName: String
    var lName: String
        
    init(fName: String, lName: String) {
        self.fName = fName
        self.lName = lName
    }
}

let person = Person(fName: "John", lName: "Doe")
print("\(person.fName) \(person.lName)")
print(person.fName + " " + person.lName)

// **************************************************
// Properties Observers
class Circle3 {
    var radius: Double = 0 {
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }        
    }        
}

let circle3 = Circle3()
circle3.radius = -10
print("Radius of circle is \(circle3.radius)")
circle3.radius = 10
print("Radius of circle is \(circle3.radius)")

// **************************************************
// Properties Observers
class Tempurature {
    var bodyTemperatureInCelcius: Double? {
        didSet {
            if bodyTemperatureInCelcius! > 37.5 {
                print("Please Meet the Doctor")
            }
            else {
                print("You are fine")
            }
        }
    }
}

let tempurature = Tempurature()
tempurature.bodyTemperatureInCelcius = 36
tempurature.bodyTemperatureInCelcius = 42

// **************************************************
// Properties Observers
class Circle4 {
    var radius: Double = 0 {
        willSet {
            print("About to assign the new value \(newValue)")
        }
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
}

let circle4 = Circle4()
circle4.radius = -10
print("Radius of circle is \(circle4.radius)")
circle4.radius = 10
print("Radius of circle is \(circle4.radius)")

// **************************************************
// Computed Properties
class Circle5 {
    var radius: Double = 0 {
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }

    var area: Double {
        get {
            return radius * radius * Double.pi
        }
    }
}

let circle5 = Circle5()
circle5.radius = 5
print("Area is \(circle5.area)")

// **************************************************
// Lazy Properties
class TestClass {
    lazy var testString: String = "Testing Word"
}

let testClass = TestClass()
print(testClass.testString)

// **************************************************
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

// **************************************************
// Type Properties
class TestClass3 {
    static var testString: String = "TestString"
}

print("\(TestClass3.testString)")

// **************************************************
// Type Properties
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

// **************************************************
// Type Properties
class Octagon: Triangle { // Inheritance
    class var sideTobeoverridden: Int {
        return 8
    }
}

var octagonSides = Octagon.sideTobeoverridden // return 8
print("\(octagonSides)")

// **************************************************
// Private Variable
class PersonNotSettable{
    private var name: String
    private var dream: String

    init(name:String, dream:String){
        self.name = name
        self.dream = dream
    }

    func getDream() -> String{
        return dream
    }
}

let personNotSettable = PersonNotSettable (name: "John", dream: "To be a good developer")
print("Dream is \(personNotSettable.getDream())")

// **************************************************
// how to access such a private property?
class Person2{
    private (set) var name: String // only the setter is private
    private (set) var dream: String

    init(name:String, dream:String) {
        self.name = name
        self.dream = dream
    }
}

let person2 = Person2(name:"John", dream: "To be a good developer")
print("\(person2.name)'s dream is \(person2.dream)")

// **************************************************
public class Circle6 {
    public private(set) var area: Double = 0
    public private(set) var diameter: Double = 0

    public var radius: Double {
        didSet {
            calculateFigures()
        }
    }

    public init(radius:Double) {
        self.radius = radius
        calculateFigures()
    }

    private func calculateFigures() {
        area = Double.pi * radius * radius
        diameter = 2 * Double.pi * radius
    }
}

let circle6 = Circle6(radius: 5)
print("area: \(circle6.area)")
print("diameter: \(circle6.diameter)")

