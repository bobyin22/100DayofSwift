//: [Previous](@previous)

import Foundation


//func double(number: Int) {
//    number = number * 2
//}
//
//double(number: 10)



func doubleInPlace(number: inout Int) {
    number = number * 2
}

var myNum = 10
doubleInPlace(number: &myNum)


//: [Next](@next)
