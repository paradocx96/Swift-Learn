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

