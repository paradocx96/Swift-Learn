import Foundation

// String

var emptyString = "" // Empty (Mutable) String

let helloWorld = "Hello World!" // String literal

let stillEmpty = String() // Another empty String

let a = String(true)
print(a) // Output: true

let b: Character = "A" // Explicit type to create a Character
let c = String(b)
print(c) // Output: A

let d = String(3.14)
print(d) // Output: 3.14

let e = String(1000)
print(e) // Output: 1000

let g = "\u{2126}" 
print(g) // Output: Ω

let h = String(repeating:"01", count:3)
print(h) // Output: 010101

// if let txtPath = Bundle.main.path(forResource: "lorem", ofType: "txt") {
//     do {
//         let lorem = try String(contentsOfFile: txtPath, encoding: .utf8)
//     } catch {
//         print("Something went wrong")
//     }
// }

let multiLineString1 = """
To be, or not to be - that is the question;
Whether 'tis nobler in the mind to suffer
The slings and arrows of outrageous fortune,
Or to take arms against a sea of troubles,
"""
print(multiLineString1) // Output: 4 lines string

let singleLongLine = """
This is a single long line split \
over two lines by escaping the newline.
"""
print(singleLongLine) // Output: Single long line

let name = ""
print(name.isEmpty) // true

let title = String()
print(title.isEmpty) // true

let spain = "España"

let tilde = "\u{303}"
print(tilde) // Output: ̃

let country = "Espan" + "\(tilde)" + "a"
print(country) // Output: España

if country == spain {
    print("Matched!") // Output: Matched!
}

if "aaa" < "bbb" {
    print("aaa is less than bbb") // Output: aaa is less than bbb
}

// Testing For Suffix/Prefix
let line = "0001 Some test data here %%%%"

print(line.hasPrefix("0001")) // Output: true
print(line.hasSuffix("%%%%")) // Output: true

// Converting To Upper/Lower Case
let mixedCase = "AbcDef"

let upper = mixedCase.uppercased()
print(upper) // Output: ABCDEF

let lower = mixedCase.lowercased()
print(lower) // Output: abcdef

//  Collections Of Characters (Swift 4)
let country2 = "España"

for character in country2 {
    print(character) // Output: E, S, p, a, n, a
}

// Without optional handling
// print(country2.first)

// With optional handling
print(country2.first!) // Output: E
print(country2.last ?? "Not found") // Output: a

// Random Element and Shuffle (Swift 4.2)
let suits = "♠︎♣︎♥︎♦︎"
// print(suits.randomElement())

// for suit in suits.shuffled() {
//     print(suit)
// }

let myString = "Sri Lanka"
// let elementRamdom = myString.randomElement()
// print(elementRamdom ?? "Not Found") // Output: Random character from string

// Counting
let cty = "España"

print(cty.count) // Output: 6
print(cty.unicodeScalars.count) // Output: 6
print(cty.utf16.count) // Output: 6
print(cty.utf8.count) // Output: 7
print(cty.utf8) // Output: España
print(cty.utf16) // Output: España

// Index
let hello = "hello"
let startIndex = hello.startIndex // 0
let endIndex = hello.endIndex // 5

print(hello[startIndex]) // Output: h
print(hello[hello.index(after: startIndex)]) // Output: e
print(hello[hello.index(before: endIndex)]) // Output: o
print(hello[hello.index(startIndex, offsetBy: 1)]) // Output: e
print(hello[hello.index(endIndex, offsetBy: -4)]) // Output: e

// Contains
let alphabet = "abcdefghijklmnopqrstuvwxyz"
print(alphabet.contains("jkl")) // Output: true

let k = alphabet.first { $0 > "j" }
print(k ?? "Not Found") // Output: k

// if let matchedIndex = alphabet.firstIndex(of: "x") {
//     print(alphabet.firstIndex(of: "x")) // Output: index value
//     print(alphabet[matchedIndex]) // Output: x
// }

// let nomatchIndex = alphabet.firstIndex(of: "A") // nil
// print(nomatchIndex ?? "Not Found") // Output: Not Found

// if let nextIndex = alphabet.firstIndex(where: { $0 > "j" }) {
//     print(alphabet.firstIndex(where: { $0 > "j" })) // Output: index value
//     print(alphabet[nextIndex]) // Output: k
// }

// Substrings
let template = "<<<Hello>>>"

let indexStartOfText = template.index(template.startIndex, offsetBy: 3) // 3
let indexEndOfText = template.index(template.endIndex, offsetBy: -3) // 8

// Swift 4
let substring1 = template[indexStartOfText...] // "Hello>>>"
let substring2 = template[..<indexEndOfText] // "<<<Hello"
let substring3 = template[indexStartOfText..<indexEndOfText] // "Hello"

// Converting A Substring Back To A String
let str = String(substring1)
print(str) // Output: "Hello>>>"

// Swift 3 deprecated
// let substring2 = template.substring(from: indexStartOfText) // "Hello>>>"
// let substring2 = template.substring(to: indexEndOfText)
// let s3 = template.substring(with: indexStartOfText..<indexEndOfText)


// Prefix Or Suffix
let digits = "0123456789"

let tail = digits.dropFirst()
print(tail) // Output: 123456789

let less = digits.dropFirst(3)
print(less) // Output: 3456789

let head = digits.dropLast(3)
print(head) // Output: 0123456

let prefixNum = digits.prefix(2)
print(prefixNum) // Output: 01

let suffix = digits.suffix(2)
print(suffix) // Output: 89 

// Insert Character At Index
var stars = "******"

stars.insert("X", at: stars.index(stars.startIndex, offsetBy: 3))
print(stars) // Output: ***X***

// Append
var message = "Welcome"

message += " Tim"
print(message) // Output: "Welcome Tim"

message.append("!!!")
print(message) // Output:  "Welcome Tim!!!

// Remove And Return Element At Index
var grades = "ABCDEF"

let ch = grades.remove(at: grades.startIndex)
print(grades) // Output: BCDEF
print(ch) // Output: A
