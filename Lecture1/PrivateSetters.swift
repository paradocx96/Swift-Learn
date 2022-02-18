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
//print (personNotSettable.name) // error: 'name' is inaccessible due to 'private protection level

/* requirement: to access values of name and dream stored in PersonNotSettable class*/
print("Dream is \(personNotSettable.getDream())")
/*but this method cannot be accepted, low performance*/

// how to access such a private property?
class Person{
    private (set) var name: String // only the setter is private
    private (set) var dream: String

    init(name:String, dream:String) {
        self.name = name
        self.dream = dream
    }
}

let person = Person(name:"John", dream: "To be a good developer")
print("\(person.name)'s dream is \(person.dream)")


/* #################################################################################### */

public class Circle {
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

let circle = Circle(radius: 5)
print("area: \(circle.area)")
print("diameter: \(circle.diameter)")

