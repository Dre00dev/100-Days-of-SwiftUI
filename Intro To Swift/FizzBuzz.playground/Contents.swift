//FizzBuzz
/*Your goal is to loop from 1 through 100, and for each number:

If it’s a multiple of 3, print “Fizz”
If it’s a multiple of 5, print “Buzz”
If it’s a multiple of 3 and 5, print “FizzBuzz”
Otherwise, just print the number.
So, here are some example values you should have when your code runs:

1 should print “1”
2 should print “2”
3 should print “Fizz”
4 should print “4”
5 should print “Buzz”
6 should print “Fizz”
7 should print “7”
…
15 should print “FizzBuzz”
…

*/




import Cocoa

for num in 1...100{
    if num.isMultiple(of: 3) && num.isMultiple(of: 5){
        print("FizzBuzz")
    }
    else if num.isMultiple(of: 3){
        print("Fizz")
    }
    else if num.isMultiple(of: 5){
        print("Buzz")
    }
    else{
        print(num)
    }
}
