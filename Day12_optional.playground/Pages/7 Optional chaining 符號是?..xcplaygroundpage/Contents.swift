//: [Previous](@previous)

import Foundation

let names = ["John", "Paul", "George", "Ringo"]
print(names.first)                  //Optional("John")
print(names.first?.uppercased())    //Optional("JOHN")


let names1: [String] = []
print(names1.first)                 //nil
print(names1.first?.uppercased())   //nil

//: [Next](@next)
