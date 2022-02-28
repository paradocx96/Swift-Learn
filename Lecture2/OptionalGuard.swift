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

// ##############################################

func guardExample2(i:Int?) {
    guard let i = i else {
        print("i is equal nil...")
        return
    }
    
    print("i has the value \(i)")
}

guardExample2(i: nil) // i is equal nil...
guardExample2(i: 10) // i has the value 10

