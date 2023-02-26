import Cocoa

class Game{
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

//make one class inherit another

class Employee{
    let hours: Int
    
    init (hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee{
    func work(){
        print("I am going to code for \(hours) hours")
    }
    override func printSummary() {
        print("I might code \(hours) hours a day but sometimes i don't")
    }
}
//final prevents this class from beinh inherited
final class Manager: Employee{
    func work(){
        print("I am going to manage for \(hours) hours")
    }
}
let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()
novall.work()


//add initializers for classes

class Vehicle {
    let isElectric: Bool
    
    init(isElectric:Bool){
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible:Bool){
        self.isConvertible = isConvertible
        //super allows u to call up method inherited from parent class
        //such as init
        super.init(isElectric: isElectric)
    }
}
let teslaX = Car(isElectric: true, isConvertible: false)


class User{
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)

class Person {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var people = [Person]()
for i in 1...3 {
    let person = Person(id: i)
    print("User \(person.id): I'm in control!")
    people.append(person)
}

print("Loop done")
people.removeAll()
print("array clear")
