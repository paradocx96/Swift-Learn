// Exercise
// #7

func check(arr: [Int]) {
    var x = 0
    var count = 0

    while (x < arr.count) {
        if arr[x] == 7 {
            count += 1
        }
        x += 1
    }

    print("Found \(count) 7s")
}

check(arr: [1, 7, 3, 4, 5, 7, 1, 2, 3, 7])
