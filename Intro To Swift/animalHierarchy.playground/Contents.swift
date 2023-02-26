import Cocoa

class Animal{
    var legs: Int
    
    init(legs:Int){
        self.legs = legs
    }
}
class Dog: Animal{
    func speak(){
        print("I am a dog. woof!")
    }
    
    override init(legs:Int) {
        super.init(legs: 4)
    }
}
class Corgi: Dog{
    override func speak() {
        print("Im a corgi")
    }
}

class Poodle: Dog{
    override func speak() {
        print("Im a poodle")
    }
}

class Cat: Animal{
    func speak(){
        print("I am a cat. meow!")
    }
    
    override init(legs:Int) {
        super.init(legs: 4)
    }
}
class Persian: Cat{
    override func speak() {
        print("Im a person")
    }
}

class Lion: Cat{
    override func speak() {
        print("Im a Lion")
    }
}

let test1 = Poodle(legs: 4)
test1.speak()

let test2 = Lion(legs: 4)
test2.speak()
