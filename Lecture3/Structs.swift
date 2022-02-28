// Structs

struct User {
   var username: String
   var email: String
   var name: String
}

var user = User(username: "text", email: "test123@gmail.com", name: "Test Test")
print(user.username)

// ##############################################

struct Person {
   var firstName: String
   var lastName: String

   func printName() {
       print("\(self.firstName) \(self.lastName)")
   }
}

var user2 = Person(firstName: "Kamal", lastName: "Khan")
user2.printName()

