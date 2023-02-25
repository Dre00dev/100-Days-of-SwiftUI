import Cocoa

struct Bankaccount {
    private (set) var funds = 0
    
    mutating func deposit(amount:Int){
        funds += amount
    }
    
    mutating func withdraw(amount:Int)-> Bool {
        if funds > amount{
            funds -= amount
            return true
        }else{
            return false
        }
    }
}

var account = Bankaccount()

account.deposit(amount: 300)


let success = account.withdraw(amount: 200)

if success{
    print("Withrawn successfully")
} else{
    print("not withdarwn")
}

// inaccessible if funds is private
//account.funds -= 1000
print(account.funds)


struct School{
    static var studentCount = 0
    
    static func add(student:String){
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Andres")

print(School.studentCount)

// self refers to current value of a struct
// Self refers to current type of a struct

