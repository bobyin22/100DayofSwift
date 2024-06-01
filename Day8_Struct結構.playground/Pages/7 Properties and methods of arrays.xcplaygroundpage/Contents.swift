//: [Previous](@previous)

import Foundation

var toys = ["Woody"]
print(toys.count)               //1

toys.append("Buzz")
print(toys)                     //["Woody", "Buzz"]

toys.firstIndex(of: "Buzz")     //1

print(toys.sorted())            //["Buzz", "Woody"]


print(toys)                     //["Woody", "Buzz"]

toys.remove(at: 0)              //["Woody"]
print(toys)
//: [Next](@next)
