import Cocoa



//string interpolation example
let age = 22
let name = "Andres"
let greeting = "Hello, my name is \(name).  I am \(age) years old. "

print (greeting)


let text = "The number of characters in this string is:"
print(text + String(text.count))

var multiple = 120.isMultiple(of: 3)
print(multiple)// true
multiple.toggle() //or multiple = !multiple
print(multiple)  //false

let fileName = "Andres.jpg"

var jpgCHeck = fileName.hasSuffix(".jpg")

print (jpgCHeck)// true

//expected output
