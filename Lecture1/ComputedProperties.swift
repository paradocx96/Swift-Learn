// Computed Properties

class Circle {
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

let circle = Circle()
circle.radius = 5
print("Area is \(circle.area)")

