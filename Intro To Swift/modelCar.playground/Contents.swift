/*
 create a struc for a car
 It should store its
 - model
 - number of seats
 - current gear
 
 It should have a method to change gears up and down
  Don't allow invalid gears 1-10 only
*/




import Cocoa

struct Car{
    let model = "Tesla Model Y"
    let seatNum = 4
    private (set) var gear: Int
    
    mutating func gearUp()-> Bool{
        if gear >= 10{
            print("The gear can not go higher than \(gear)")
            return false
        }else{
            gear += 1
            print("the gear is now at \(gear)")
            return true
        }
    }
    mutating func gearDown() -> Bool{
        if gear <= 1{
            print("The gear can not go lower than \(gear)")
            return false
        } else{
            gear -= 1
            print("the gear is now at \(gear)")
            return true
        }
    }
}

var whip = Car(gear:8)


whip.gearUp()
whip.gearUp()
whip.gearUp()

