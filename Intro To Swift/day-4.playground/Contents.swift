import Cocoa


//type annotations
//Easy Golden Rule: Swift must know at all times the data types of all our data.
//either through type annotations or inference

//swift infers it is a string because of the ""
let surname = "Pulgarin"
//swift infers it is an integer because its a whole number
let score = 0

//explicity declares as type
let name: String = "Andres"
var grade: Int = 100
var pi: Double = 3.14
var boool: Bool = true

var albums: [String] = ["Andres", "test"]

var Book: [String:Double] = ["Frankenstein": 12.99]

var song: Array<String> = ["Boom", "test"]

var names: Set<String> = Set(["Andres", "John", "Michael"])

var teams: Array<String> = []

enum uiTheme{
    case Light, Dark, Grey
}
var style = uiTheme.Dark

let userName: String
userName = "Andres"
print(userName)
