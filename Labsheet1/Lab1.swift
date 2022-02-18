let studentName = "Navinda Lankesh"
var grade = "A+"
// studentName = "Bill Gates"
grade = "B+"
var playerHealth_Explicit: Int = 100
var playerHealth_Inferred = 200

// Explicit Type
var playerDamage: Int, playerAttack: Int, playerGold: Double

// Inferred Type
var enemyDamage, enemyAttack, enemyMana: Int

print(studentName, grade)
print(playerHealth_Explicit,playerHealth_Inferred)

var anInteger: Int = 1
var aDouble: Double = 2.0

// Casting
var intToDouble = Double(anInteger)
var doubleToFloat = Float(aDouble)

var result = 1 + 2.34
var result2 = Double(anInteger) + aDouble

print(anInteger, aDouble)
print(intToDouble, doubleToFloat)
print(result, result2)


var imEmpty = ""
var imAlsoEmpty = String()
var againEmpty: String
var firstName: String = "James"
var lastName = "Bond"

var fullName = firstName + " " + lastName
print(fullName)

fullName += " is using Swift 3"
print(fullName)

var message = "I'm learning Swift 3!"
var interpolatedMessageString = "Hey guys, \(message)"
print(interpolatedMessageString)

