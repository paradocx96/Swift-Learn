// Stored properties
class Circle {
    var radius: Double = 0.0
}

let circle = Circle()
circle.radius = 10
print("Radius of circle is \(circle.radius)")

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

