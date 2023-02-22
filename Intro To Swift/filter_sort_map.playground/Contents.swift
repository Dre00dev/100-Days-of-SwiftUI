//CheckPoint 5
/*
 Your input is this:

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
Your job is to:

Filter out any numbers that are even
Sort the array in ascending order
Map them to strings in the format “7 is a lucky number”
Print the resulting array, one item per line
So, your output should be as follows:

7 is a lucky number
15 is a lucky number
21 is a lucky number
31 is a lucky number
33 is a lucky number
49 is a lucky number
*/



import Cocoa

//input
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


let luckyEven = luckyNumbers.filter{!$0.isMultiple(of: 2)}

print(luckyEven)
let luckySort = luckyEven.sorted{$1 > $0}
print(luckySort)

let luckyMap = luckySort.map{"\($0) is a lucky number." }
print(luckyMap.joined(separator: "\n"))

let answer = luckyNumbers
    .filter{!$0.isMultiple(of: 2)}
    .sorted{$1 > $0}
    .map{"\($0) is a lucky number"}
    .joined(separator: ("\n"))

print(answer)
            

    


