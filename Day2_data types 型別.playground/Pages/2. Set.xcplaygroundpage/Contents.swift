//: [Previous](@previous)

import Foundation

var mySet = Set(["蘋果", "香蕉"])
mySet.insert("橘子")
print(mySet)            //["橘子", "蘋果", "香蕉"]

if mySet.contains("蘋果") {
    print("mySet裡面有蘋果")
}


var mySet2 = Set([0, 1])
print(mySet2)   //[0, 1]

//: [Next](@next)
