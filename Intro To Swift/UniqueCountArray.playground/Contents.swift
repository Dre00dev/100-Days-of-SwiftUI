import Cocoa


// create an array of strings
// then print the number of items in the array
// then print the number of unique items in the array.

var names = ["Andres", "Andrea", "Andres", "Jade", "Henry"]

print("The number of names in the array are \(names.count).")

var nameSet = Set(names)

print("The number of unique items in the array are \(nameSet.count).")
