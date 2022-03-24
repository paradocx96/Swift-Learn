// Hashable Value

struct Person: Hashable {
    var id: Int
    var name: String
    
    public var hashValue: Int {
        return id.hashValue
    }

    public static func == (left: Person, right: Person) -> Bool {
        return left.id == right.id && left.name == right.name
    }
}

var people: Set = [Person(id: 1, name: "John"), Person(id: 2, name: "Jane"), Person(id: 3, name: "John")]

print(people) // Output: [HashableValue.Person(id: 2, name: "Jane"), HashableValue.Person(id: 3, name: "John"), HashableValue.Person(id: 1, name: "John")]