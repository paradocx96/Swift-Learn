// Exercise
// #3

var str: String = "HelloPlayground"
var ls: String = "ls"

if str.starts(with: ls) {
    print(str)
} else {
    print(ls+str)
}

/* #################################################################################### */

func check(str: String) -> String {
    if str.starts(with: "ls") {
        return str
    } else {
        return ls+str
    }
}

print(check(str: "HelloPlayground"))

