import Cocoa

//functions

func showWelcome(){
    print("Hello")
    print("this is a 2nd line")
    print("this is actually suprisingly a 3rd line")
}

showWelcome()

let roll = Int.random(in: 1...100)

print(roll)


func printTimesTables(num: Int, end: Int){
    for i in 1...end{
        print("\(num) x \(i) = \(num * i)")
    }
}

printTimesTables(num: 5, end: 12)


//return values from functions

let root = sqrt(169)
print(root)  //stores sqrt return value in root

func rollDice(start: Int, end: Int) -> Int{
    return Int.random(in: start...end)
}

var result = rollDice(start: 1, end: 6)
print(result)


var string1 = "Andres"
var string2 = "Anresd"

func compareString(string1: String, string2: String) -> Bool{
    if string1.sorted() == string2.sorted(){
        return true
    }
    else{
        return false
    }
}

if compareString(string1: string1, string2: string2){
    print("yup")
}
else{
    print("na")
}

func pythagoras(a: Double, b: Double) -> Double{
    let input = a*a + b*b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)  //will pass 3 and 4 as doubles 3.00 and 4.00
print(c)

//return multiple values from function
func getUser() -> (firstName: String, lastName: String){  //using a tuple
    (firstName: "Andres", lastName: "Pulgarin")  //tuple
    //("andres", "Pulgarin") other options tuple
}

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")


//tuples and dictionaries are different
//swift cannot know if keys are present
//when you access tuple values they are there
//use user.firstName not string
//dictionary could have 1000 values whilst tuple has a specific name for each locaiton

func isUpperCase(_ string: String)-> Bool{
    string == string.uppercased()
}

let string = "HELLOW WORLD"
let test = isUpperCase(string)

func printTable(for number: Int) {
    for i in 1...12{
        print(" \(i) x \(number) = \(i * number)")
    }
}
printTable(for: 5)


//The _ will be for no external parameter name
// or add a second external parameter name
