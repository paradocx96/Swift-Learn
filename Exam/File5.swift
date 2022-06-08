// **************************************************
// Optionals
var j: Int? = 5
j = nil // No compiler error!
// print(j) // nill + Warning

// **************************************************
// Unwrapping Optionals
var x:Int = 5
var y: Int? = 5
x = 5 + y! // No Compiler error!
print(x) // 10

// **************************************************
// Optional Binding
if y != nil {
    x = 10 + y!
    print(x) // 15
}

if let y = y {
    x = 15 + y
    print(x) // 20
}

// **************************************************
// Implicit Unwrapped Optionals
var m: Int! = 5
m = nil //No compiler error!
// var z = 5 + m //No compiler error!
// print(z)

// **************************************************
// Optional - Guard
func guardExample(i:Int?) {
    if let i = i {
        print("i is not equal nil...")
    } else {
        print("i is equal nil..")
    }
}

guardExample(i: nil) // i is equal nil..
guardExample(i: 10) // i is not equal nil...

// **************************************************
func guardExample2(i:Int?) {
    guard let i = i else {
        print("i is equal nil...")
        return
    }
    
    print("i has the value \(i)")
}

guardExample2(i: nil) // i is equal nil...
guardExample2(i: 10) // i has the value 10

// **************************************************
// Optional - Chaining
class Vehicle {
    var numberOfWheels: Double

    init(numberOfWheels:Double) {
        self.numberOfWheels = numberOfWheels
    }
}

class Garage {
    var vehicle: Vehicle?
}

let aVehicle = Vehicle(numberOfWheels: 4)
let aGarage = Garage()
print(aVehicle.numberOfWheels) // 4.0

var numberOfWheels = aGarage.vehicle?.numberOfWheels
print("\(numberOfWheels)") // nil

aGarage.vehicle = aVehicle

var numberOfWheels2 = aGarage.vehicle?.numberOfWheels
print("\(numberOfWheels2)") // Optional("4.0")

