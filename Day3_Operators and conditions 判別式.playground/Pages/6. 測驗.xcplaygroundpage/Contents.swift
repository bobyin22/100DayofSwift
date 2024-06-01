//: [Previous](@previous)

import Foundation

//This code will print a message – true or false?
//Hint: Remember that both sides of && must be true in order for the whole condition to be true.

//1️⃣ ✅
let a = 10
let b = 10

if a >= 10 && b <= 10 {
    print("Hello, Swift!")  //Hello, Swift!
}

//2️⃣ ❌ 不會印出
let average1 = 5.0
let average2 = 4.0

if average1 > 5.0 && average2 > 4.0 {
    print("Hello, Swift!")
}

//3️⃣ ✅
let a = true
let b = true

if a && b {
    print("Hello, Swift!")
}

//4️⃣ ✅
let test = false

if test == false {
    print("Hello, Swift!")
}

//5️⃣ ❌ 不會印出
let loggedIn = true
let authorized = false

if loggedIn && authorized {
    print("Hello, Swift!")
}

//6️⃣ ❌ rating 型別要改Int
//let rating = "5"
let rating = 5

if rating > 4 {
    print("Hello, Swift!")
}

//7️⃣ ❌ 不會印出
let age1 = 18
let age2 = 21

if age1 > 18 || age1 < 18 {
    print("Hello, Swift!")
}

//8️⃣

//9️⃣

//1️⃣0️⃣

//1️⃣1️⃣

//1️⃣2️⃣


//: [Next](@next)
