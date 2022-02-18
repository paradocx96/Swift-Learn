// Exercise
// #6

func check(arr: [Int]) {
    var x = 0
    while (x < arr.count - 2) {
        if arr[x] == 1 && arr[x + 1] == 2 && arr[x + 2] == 3 {
            print("Found Sequence 1,2,3 at index \(x)")
        }
        x += 1
    }
}

check(arr: [1, 2, 3, 4, 5, 6, 1, 2, 3, 10])
