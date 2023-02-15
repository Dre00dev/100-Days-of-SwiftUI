// Celsius to Fahrenheit Converter
// Creates a constant holding any temperature in Celsius.
// Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
// Prints the result for the user, showing both the Celsius and Fahrenheit values.

import Cocoa

let celsius = 17

var fahrenheit = (celsius * 9) / 5 + 32

print ("""
The Temperature in Celsius is: \(celsius)
The Temperature in Fahrenheit is: \(fahrenheit)
""")
