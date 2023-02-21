/*
The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
If you can’t find the square root, throw a “no root” error.
*/



import Cocoa

enum SqrtError: Error{
    case outOfBounds, noRoot
}
func squareRoot(_ number: Int)throws->Int{
    if number < 1 || number > 10_000{
        throw SqrtError.outOfBounds
    }
    for i in 1...100{
        if number == i*i{
            return i
        }
    }
    throw SqrtError.noRoot
}

do{
    let result = try squareRoot(32)
    print(result)
}
catch SqrtError.outOfBounds{
    print("This number is out of bounds")
}
catch SqrtError.noRoot{
    print("This number has no Integer root")
}
catch{
    print("This thing broke")
}
