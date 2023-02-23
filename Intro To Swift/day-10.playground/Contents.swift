import Cocoa


//day 10 Structs

struct Album{
    let title: String
    let artist: String
    let year: Int
    
    
    func printSummary(){
        print("\(title) \(year) by \(artist)")
    }
    
    
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee{  //struct
    let name: String  //property
    var vacationRemaining = 14  //property
    
    mutating func takeVacation(days:Int){  //method
        if vacationRemaining >  days {
            vacationRemaining -= days
            print("I am going on vacation")
            print("Days  Remaining: \(vacationRemaining)")
        } else{
            print("There aren't enough days remaining")
            print("Days Remaining: \(vacationRemaining)")
        }
    }
}

var archer = Employee(name: "Archer Sterling", vacationRemaining: 14)  //initializer  k

archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let a = 1
let b = 2.0
let c = Double(a) + b

let kane = Employee(name: "Kane Pulgarin")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

struct NewEmployee{
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    //dynanamically computed property
    var vacationRemaining: Int {
        get{
            vacationAllocated - vacationTaken
        }
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}
    
var richie = NewEmployee(name: "Richie Martinez", vacationAllocated: 14)

richie.vacationTaken += 4
print(richie.vacationRemaining)
richie.vacationTaken += 4
print(richie.vacationRemaining)


struct Game{
    var score = 0
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1


struct App {
    var contacts = [String]() {
        willSet{
            print("Current value is \(contacts)")
            print("New Value will be \(newValue)")
        }
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue).")
        }
    }
}
 
var app = App()

app.contacts.append("Andres")
app.contacts.append("Kev")
app.contacts.append("Kim")
let newList = ["Andres", "test", "Jade"]

app.contacts.append(contentsOf:newList)
print(app.contacts)

//custom init

struct Player{
    let name: String
    let number: Int
    
    init(name:String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
