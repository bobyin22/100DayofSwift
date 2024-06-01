//: [Previous](@previous)

import Foundation


var number = 1

//迴圈走多次
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")


//完全不走迴圈，因為是false
while false {
    print("This is false")
}



//會走過一次，然後因為是false所以while不走
repeat {
    print("This is false")
} while false


//: [Next](@next)
