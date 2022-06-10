import Foundation

// ##########################################################################
// Protocol (interface)

protocol FirstProtocol {
    //protocol definition goes here
}

protocol SecondProtocol {
    //protocol definition goes here
}

protocol AnotherProtocol {
    //protocol definition goes here
}

struct SomeStruct: FirstProtocol, SecondProtocol {
    //struct definition goes here
}

class SomeClass: FirstProtocol, SecondProtocol, AnotherProtocol {
    //class definition goes here
}

// #############################################################################

protocol FullNameable {
    var fullName: String { get }
}

struct Student: FullNameable {
    let firstName: String
    let middleName: String
    let lastName: String

    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

// #############################################################################

protocol Blendable {
    func blend() -> ()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }

    func blend() {
        print("Almost all friut can be used")
    }
}

class Dairy {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Milk: Dairy, Blendable {
    func blend() {
        print("Milk is a type of dairy")
    }
}

func makeSmoothie(with ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let orange = Fruit(name: "Orange")
let strawberry = Fruit(name: "Strawberry")
let chocolateMilk = Milk(name: "Chocolote")

let ingredients: [Blendable] = [strawberry, chocolateMilk, orange]
makeSmoothie(with: ingredients)

// #############################################################################

protocol Animal {
    var noOfLegs: Int { get set }
}

protocol Pet: Animal {
    var name: String { get set }
}

class Dog: Pet {
    var name:String
    var noOfLegs: Int

    init(name: String, noOfLegs:Int) {
        self.name = name
        self.noOfLegs = noOfLegs
    }
}
