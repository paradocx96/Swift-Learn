import Foundation

// Any & AnyObject

func myFunction() -> Void {}

let values: [Any] = ["Apple", 99, "Zaphod", -1, myFunction]

for value in values {
    switch value {
        case is String:
        print("\(value) is a string!")
        case is Int:
        print("\(value) is an integer!")
        default:
        print("I don't know this value!")
    }
}
// Output:
// Apple is a string! 
// 99 is an integer!  
// Zaphod is a string!
// -1 is an integer! 
// I don't know this value!

let num: Any = 10
let str: Any = "Hello"
let tweet:[String: Any] = [
    "text": "Lorem ipsum dolor",
    "likes": 42,
    "retweets": ["@reinder42", "@aplusk", "@beeblebrox"]
]

