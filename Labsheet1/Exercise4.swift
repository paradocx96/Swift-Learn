// Exercise
// #4

let number: [Int] = [1, 7, 5, 7, 9, 11, 13, 15]

let check = 7

if number.count > 0 {
    if number.count < 4 {
        var x = 0
        while x < number.count {
            if check == number[x] {
                print("Index number \(1+x) found as 7")                
            }
            x += 1
        }            
    } else {
        var x = 0
        while x < number.count {
            if check == number[x] {
                print("Index number \(1+x) found as 7")                
            }
            x += 1
        }
    }
}

/* #################################################################################### */

func check(number: [Int]) {
    if number.count < 4 {
        var x = 0
        while x < number.count {
            if check == number[x] {
                print("Index number \(1+x) found as 7")                
            }
            x += 1
        }            
    } else {
        var x = 0
        while x < number.count {
            if check == number[x] {
                print("Index number \(1+x) found as 7")                
            }
            x += 1
        }
    }
}

check(number: [1, 7, 5, 7, 9, 11, 13, 15])

