//Access Controls
import Foundation

class Person {
  public var id: Int
  fileprivate var fname: String
  fileprivate var lname: String
  private var age: Int
  private(set) var siblings: Int
  internal var nic: String

  init(id: Int, fname: String, lname: String, age: Int, siblings: Int, nic: String) {
    self.id = id
    self.fname = fname
    self.lname = lname
    self.age = age
    self.siblings = siblings
    self.nic = nic
  }

  func getAge() -> Int {
    return age
  }
}

var p1 = Person(id: 01, fname: "Manju", lname: "Sanju", age: 25, siblings: 3, nic: "971236548V")

print(p1.id)
print(p1.fname)
print(p1.lname)
print(p1.getAge())
print(p1.siblings)
print(p1.nic)
