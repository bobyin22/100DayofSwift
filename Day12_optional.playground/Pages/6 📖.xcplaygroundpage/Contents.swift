//: [Previous](@previous)

import Foundation

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
print(scores["Crusher"])                        //nil

let crusherScore = scores["Crusher"] ?? 0
print(crusherScore)                             //0

let crusherScore1 = scores["Crusher", default: 0]
print(crusherScore1)                            //0
//: [Next](@next)
