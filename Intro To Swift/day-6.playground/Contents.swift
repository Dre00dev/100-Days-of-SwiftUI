import Cocoa


// for loops
let platform = ["tvOS" , "IOS", "MacOS", "watchOS"]
for name in platform{
    print("Swift works great on \(name)")
}

for i in 1...12{
    print("The \(i) times tables")
    
    for j in 1...12{
        print("\(i) x \(j) is \(i * j)")
    }
}

for i in 1...5{
    print("Counting from 1 through 5: \(i)")
}
for i in 1..<5{   //1 -5 < 5
    print("Counting from 1 up to 5: \(i)")
}

var lyric = "Yo this a lyric"

for _ in 1...5{
    lyric += " hate"
}
print(lyric)


// while loops

var countdown = 10

while countdown > 0{
    print("\(countdown)")
    countdown -= 1
}
print("thats the countdown")

//creates a random number between
let id = Int.random(in:1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20{
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll).")
}
print("I hit a crit")

let fileNames = ["john.jpg", "test.png", "special.jpg"]

for filename in fileNames{
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("found picture: \(filename)")
}

let num1 = 4
let num2 = 14

var multiples = [Int]()  //create empty array of integers

for i in 1...100_000{
    if i.isMultiple(of: num1) && i.isMultiple(of: num2){
        multiples.append(i)
        
        if multiples.count == 10{
            break
        }
    }
}

print(multiples)


//ternary operator review
let age = 23
var canVote = age >= 21 ? "yes": "no"
print (canVote)

