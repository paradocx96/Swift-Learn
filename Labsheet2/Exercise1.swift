// Exercise
// #1

let y1s1 = ["IT1101","IT1102","IT1103","IT1104"]
let y1s2 = ["IT1201","IT1202","IT1203","IT1204"]
let y2s1 = ["IT2101","IT2102","IT2103","IT2104"]
let y2s2 = ["IT2201","IT2202","IT2203","IT2204"]

func printValue(year: String, semester: String) {
    if year == "1" {
        if semester == "1" {
            for i in y1s1 {
                print(i)
            }
        } else {
            for i in y1s2 {
                print(i)
            }
        }
    } else {
        if semester == "1" {
            for i in y2s1 {
                print(i)
            }
        } else {
            for i in y2s2 {
                print(i)
            }
        }
    }    
}

printValue(year: "2", semester: "1")