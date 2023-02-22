import Cocoa
/*
let sayHello = { (name: String) -> String in
    
    print("Hi \(name).")
    
}
let team = ["Gloria", "Suzy", "Andres", "test"]
*/
/*
let sorted = team.sorted(by: {(a: String, b: String) -> Bool in
    
    if a =="Andres"{
        return true
    }
    else if b == "Andres"{
        return false
    }
    return a < b
    
})

*/


/*let sorted  = team.sorted{a,b in
    
    if a =="Andres"{
        return true
    }
    else if b == "Andres"{
        return false
    }
    return a < b
}*/

let payment = {(user: String) -> Bool in
    print("\(user) is paid.")
    return true
}


payment("Andres")

let team = ["Gloria", "Suzy", "Andres", "test"]

let captainFirstTeam = team.sorted{
    if $0 == "Suzy"{
        return true
    } else if $1 == "Suzy"{
        return false
    }
    return $0 < $1
}
print(captainFirstTeam)
let reverseTeam = team.sorted{$0 > $1}
print(reverseTeam)

let tOnly = team.filter{$0.hasPrefix("t")}
print(tOnly)

let uppercaseTeam = team.map{$0.uppercased()}
print(uppercaseTeam)

func makeArray(size: Int, using generator: () -> Int)->[Int] {
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 50){
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int{
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first:() -> Void, second: () -> Void, third: () -> Void){
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork{
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("third work")
}

 
