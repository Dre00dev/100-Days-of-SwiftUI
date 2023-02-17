import Cocoa

//Arrays
var beetles=["hello","test"]
print(beetles[1])

beetles.append("rip")
print(beetles[2])

let firstBeetle = beetles[0]
print(firstBeetle)

var scores = Array<Int>()
scores.append(2)
scores.append(3)
print(scores)

var albums = Array <String>()
albums.append("My Dark Beautiful fantasy")
albums.append("Malibu")
albums.append("Text")
albums.append("Fire")

print(albums.count)
print(albums)


var characters = ["Andres", "Andrea", "Luz", "Conrado"]

print("There are \(characters.count) characters in the family")
characters.removeAll()
print("There are \(characters.count) characters in the family after removing all")

var text = ["Andres", "Andrea", "Luz", "Conrado"]
print(text.contains("Andres")) //Bool True

let cities = ["New York", "Los Angeles","Budapest"]
var sortedCity = cities.sorted()
print(cities)
print(sortedCity)
print(cities.reversed())


//dictionaries

var  employee = [
    "name": "Taylor Swift",
    "location": "Nashville",
    "Job": "singer",
]

print(employee["name", default: "Unknown"])
print(employee["location", default: "Unknown"])
print(employee["Job", default: "Unknown"])


let hasGraduated = [
    "Andres" : true,
    "Passed" : false,
    "works" : true,
]

let schoolLocation = [
    2014 : "CPHS",
    2018: "BCC",
    2022: "RAMAPO"
]

print(schoolLocation[2014, default:"Unknown"])
print(hasGraduated["Andres", default: false])
print(hasGraduated["John", default: false])

var heights = [String:Int]()
heights["Andres"] = 511
heights["Andrea"] = 409

print(heights)

print(heights.count)

//sets

//this actually creates an array with no order and removes duplicate values
let actors = Set([
    "Denzel Washington",
    "GeorgeBush",
    "Myself",
    "E.T. from ET"
])

//prints in this order which is random
//["Denzel Washington", "Myself", "E.T. from ET", "GeorgeBush"]
print(actors)

var friends = Set<String>()
friends.insert("Henry")
friends.insert("Edrick")
friends.insert("Joel")
friends.insert("James")

print(friends)

print(friends.isEmpty)
print(friends.contains("James"))  //true
print(friends.count)//4
print(friends.sorted())

//enum

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    //or
    //case monday, tuesday, wednesday, thursday, friday
}

//oncd u assign a variable to an enum it cannot be reassigned to a int or string etc
//this allows u to forego Weekday and use . operator to access contents

var day = Weekday.monday

day = Weekday.tuesday
print(day)
day = .wednesday
print(day)


// illegal var day = Weekday.january


