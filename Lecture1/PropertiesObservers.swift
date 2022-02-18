// Properties Observers
class Circle2 {
    var radius: Double = 0 {        
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }        
    }        
}

let circle2 = Circle2()
circle2.radius = -10
print("Radius of circle is \(circle2.radius)")
circle2.radius = 10
print("Radius of circle is \(circle2.radius)")

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

// Properties Observers
class Circle3 {
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

let circle3 = Circle3()
circle3.radius = -10
print("Radius of circle is \(circle3.radius)")
circle3.radius = 10
print("Radius of circle is \(circle3.radius)")

