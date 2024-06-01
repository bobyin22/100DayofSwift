//: [Previous](@previous)

import Foundation

//Which of these lines make an array, dictionary, set, or tuple?
//Hint: Make sure the type annotations match what's placed inside.

//1️⃣
//✅Option 1:
var fibonacci = (1, 1, 2, 3, 5, 8)
print(fibonacci)    //(1, 1, 2, 3, 5, 8)
print(fibonacci.5)  //8
//This creates a tuple.

//❌Option 2:
//var repeatCount = [String: Int]
//This is invalid Swift – it needs parentheses after [String: Int].

//2️⃣
//✅Option 1:
let usedWords = Set(["hello", "world"])
//This creates a set.

//❌Option 2:
//let winners: [String] = ("David", "Jason", "Raquel")
let winners: [String] = ["David", "Jason", "Raquel"]
//This attempts to place a tuple of strings into an array of strings.

//3️⃣
//❌Option 1:
//var lotteryNumbers = Set(11, 23, 44)
//To create a set you must pass it an array of values rather than just some loose numbers.
var lotteryNumbers = Set([11, 23, 44])
print(lotteryNumbers)       //[44, 23, 11]

//✅Option 2:
var names = ["Beyoncé", "Jay-Z"]
//This creates an array.

//4️⃣
//❌Option 1:
//var unreadMessages: Int = "12"
var unreadMessages: Int = 12
//This attempts to place a string into an integer.

//✅Option 2:
let episodes = [String]()
//This creates an empty array.

//5️⃣
//✅Option 1:
var scores = [100, 90, 85]
//This creates an array.

//❌Option 2:
//let ages: Int = [26, 28, 39]
let ages: [Int] = [26, 28, 39]
//This attempts to place an array of integers into a single integer, which is invalid.

//6️⃣
//✅Option 1:
let credentials = ["username": "twostraws"]
//This creates a dictionary.

//❌Option 2:
let isConfigured = false
//This creates a Boolean.

//: [Next](@next)
