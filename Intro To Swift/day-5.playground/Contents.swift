import Cocoa

// if statements
let x = 33
var y = 33

if x==y{
    print(y)
}

let score = 85

if score > 80 {
    print("Great Job!")
}

let speed = 66
let mile = 5.10
let age = 21

if speed >= 65{
    print("Damn you are going \(speed) miles per hour.")
}

if age >= 18{
    print("you are \(age) years old! Are you ready to join the army!")
}

if mile < 5{
    print("WOW YOU ARE SO FAST")
}
else{
    print("You are going at a \(mile) mile pace")
}


let ourName = "Andres Pulgarin"
let friendName = "James Martinez"

if ourName > friendName{
    print("Hey, \(ourName) and \(friendName).")
}
else if ourName < friendName{
    print("Hey, \(friendName) and \(ourName). ")
}
else{
    print("That didn't work")
}


var numbers = [1,2,3,4,5,6,7,8,9]
numbers.append(10)

if numbers.count > 5{
    numbers.remove(at: 0)
}
print(numbers)

let country = "Colombia"

if country != "Ecuador"{
    print("The country is not ecuador")
}

var userName = ""
//var userName = "Andres123"

if userName == ""{
    userName = "Guest"
}
print("Welcome, \(userName)")


if userName.isEmpty{
    print("The string username is empty")
}
else{
    print("the string is not empty")
}

enum Transportation{
    case plane,car,truck,van,bike
}

var option = Transportation.plane

if option == .plane || option == .car{
    print("Fancy transportation")
}
else if option == .truck || option == .van{
    print("That is heavy")
}
else{
    print("I can assume your taking your bike then?")
}

//switch cases

//not all switch cases must check all possible values
//there must always be a case

//unlike C++ the switch statement will run the first case and then finish the block
// It will not find all cases it will only run the first matching case
enum Weather{
    case sun,rain,snow,thunder
}
let forecast = Weather.sun

switch forecast{
case .sun:
    print("Its sunny outside")
case .rain:
    print("its raining")
case .snow:
    print("Its snowing")
case .thunder:
    print("Thunder with a chance of meatballs")
}


let place = "Metropolis"

switch place {
case "Gotham":
    print("You are batman!")
case "NYC":
    print("you are no one")
case "Wakanda":
    print("ur black panther")
default:
    print("who are you")  //default must be after the other cases otherwise they wont be checked
}

//use fallthrough if you want it to move on the next case

let day = 5
print("5 days of week")

switch day {
case 5:
    print("Today is day 5")
    fallthrough
case 4:
    print("Today is day 4")
    fallthrough
case 3:
    print("Today is day 3")
    fallthrough
case 2:
    print("Today is day 2")
    fallthrough
default:
    print("Today is the last day!")
}


//Ternary operator
let date = 18

let canVote = date >= 18 ? "yes":"no"

let hour = 23

print(hour < 12 ? "It is before noon": "It is after noon" )

var nombre = ["Andfes", "John", "Jack"]
print(nombre.isEmpty ? "array is empty" : "Array is full")

enum Theme{
    case Light, Dark
}
let theme = Theme.Dark

let background = theme == .Dark ? "Black" : "White"
print(background)
