//: [Previous](@previous)

import Foundation

//1️⃣
//✅Option 1:

var roles = ["captain": "Mal", "engineer": "Kaylee"]
//This creates a dictionary with strings for keys and strings for values.

//❌Option 2:

//var place = ["road", "Park Lane", "city", "Cardiff"]
//This creates an array.

//2️⃣
//❌Option 1:

//let location = ("road": "Park Lane", "city": "Cardiff")
let location = ["road": "Park Lane", "city": "Cardiff"]
//This is not valid Swift code.

//✅Option 2:

let heights = ["Taylor Swift": 1.78]
//This creates a dictionary with strings for keys and doubles for values.

//3️⃣
//A ✅
var address = ["road": "Park Lane", "city": "Cardiff"]

//B ❌ Dictionary 要 Key: Value
//var books = ["The Jungle Book"]
var books = ["bookName": "The Jungle Book"]

//4️⃣
//A ❌ 這是Double
var speed = 60.75

//B ✅
var capitals = ["England": "London", "Scotland": "Edinburgh"]

//5️⃣
//A ✅
let forecast = ["Monday": "sunny", "Tuesday": "cloudy"]


//B ❌ 這是布林
let isVisible = true

//6️⃣
//A ✅
let scores = ["Sophie": 100]

//B ❌ 這是字串
let password = "fr0sti3s"



//: [Next](@next)
