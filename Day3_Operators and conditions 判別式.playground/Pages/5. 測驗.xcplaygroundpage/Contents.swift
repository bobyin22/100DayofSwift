//: [Previous](@previous)

import Foundation

//This code will print "Success" – true or false?
//Hint: else blocks are executed if the condition is false, and Swift won't let you compare different types of data.

//1️⃣
var city = "Tokyo"
if city == "Madrid" {
    print("Failure")
} else {
    print("Success")    //Success
}

//2️⃣
let sharkCount: Int = 21
if sharkCount < 21 {
    print("Success")
} else {
    print("Failure")    //Failure
}

//3️⃣
let passwordLength = 5
if passwordLength <= 5 {
    print("Failure")    //Failure
} else {
    print("Success")
}

//4️⃣
var favoriteColor = "Red"
if favoriteColor == "red" {
    print("Success")
} else {
    print("Failure")    //Failure
}

//5️⃣ 不同型別不能
var actualWage: Int = 22_000
//var medianWage: Double = 22_000
var medianWage: Int = 22_000
if actualWage >= medianWage {
    print("Success")    //Success
}

//6️⃣
//var cupsOfCoffee = "4"
var cupsOfCoffee: Int = 4
if cupsOfCoffee >= 3 {
    print("Success")    //Success
} else {
    print("Failure")
}

//7️⃣
let isAvailable: Bool = false
if isAvailable {
    print("Success")
} else {
    print("Failure")    //Failure
}

//8️⃣
let age = 21
if age > 18 {
    print("Success")    //Success
} else {
    print("Failure")
}

//9️⃣
let employeeCount = 50
if employeeCount == 50 {
    print("Success")    //Success
}

//1️⃣0️⃣
let orderAmount = 200
if orderAmount >= 200 {
    print("Success")    //Success
}

//1️⃣1️⃣
let name = "Taylor"
if name == "Paul" {
    print("Failure")
} else {
    print("Success")    //Success
}

//1️⃣2️⃣
let teaStrength = 5
if teaStrength >= 4 {
    print("Success")    //Success
} else {
    print("Failure")
}

//: [Next](@next)
