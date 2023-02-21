import Cocoa

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5{
        throw PasswordError.short
    }
    if password == "123456"{
        throw PasswordError.obvious
    }
    
    if password.count < 8{
        return "OK"
    }
    else if password.count < 12{
        return "Thats Better"
    }
    else{
        return "Excellent"
    }
}

do {
    let result = try checkPassword("5555555")
    print("Password Rating: \(result).")
}
catch PasswordError.short{
    print("too short")
}
catch PasswordError.obvious{
    print("too obvious")
}
catch{
    print("Random error good luck")
}


func youCute(_ name: String) -> String{
    if name == "Jade"{
        return "True"
    }
    else{
        return "No"
    }
}
