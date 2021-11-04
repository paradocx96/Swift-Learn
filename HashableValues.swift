/*
    A set cannot have duplicates
    
    In order to check for duplicates, the set must be of a type that has a way to tell whether two instances are equal
    
    Swift uses a hash value for this purpose

    The hash value is a unique value of type Int, which must be equal if two values are the same

    Swift’s basic built-in types are hashable
    String, Bool, Int, Float, Double

    If we want to use custom types, we must implement the Hashable protocol

    Hashable conformance means that your type must implement a read-only property called hashValue of type Int

    Also, because Hashable conforms to Equatable, we must also implement the equality (==) operator
*/

struct MyStruct: Hashable {
    var id: String
    
    public var hashValue: Int {
        return id.hashValue
    }

    public static func ==(lhs: MyStruct, rhs: MyStruct) -> Bool {
        return lhs.id == rhs.id
    }
}