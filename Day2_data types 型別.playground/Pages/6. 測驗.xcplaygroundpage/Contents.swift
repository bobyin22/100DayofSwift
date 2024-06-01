//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//
//Hint: Trying to read a dictionary using a key that doesn't exist is valid, but won't return any data.

//1️⃣
//A ❌ 陣列
let ships = ["Star Trek", "Enterprise"]
//let enterprise = ships["Star Trek"]
let enterprise = ships[0]   //Star Trek     Array[元素位置]

//2️⃣ ✅
let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]


//3️⃣ ❌
let ratings = [1: "Bad", 2: "OK", 3: "Good"]
//let rating = ratings["2"]
let rating = ratings[2]

//4️⃣ ✅
let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]  //nil

//5️⃣ ✅
let olympics = [2012: "London", 2016: "Rio", 2020: "Tokyo"]
let london = olympics[2012] //London

//6️⃣ ❌ Dictionary 才能給default值，Array不行
//let users = ["Taylor", "Taylor Swift"]
let users = ["Taylor": "Taylor Swift"]
let taylor = users["Taylor", default: "Anonymous"]

//7️⃣ ✅
let books = ["Austen": "Pride and Prejudice"]
let dickens = books["Dickens", default: "Unknown"]  //回傳 Unknown，雖然沒有key Dickens

//8️⃣ ❌
let prices = ["Milk": 1, "Pepsi": 2]
//let first = prices[0]
let first = prices["Milk"]  //1

//9️⃣
let albums = ["Prince": "Purple Rain"]
let beatles = albums["Beatles"] //nil

//1️⃣0️⃣ ❌ 因為key m 有值，所以不會走到default
let abbreviations = ["m": "meters", "km": "kilometers"]
//let meters = abbreviations["m", default "m"]
let meters = abbreviations["m", default: "m"]   //meters
                                                

//1️⃣1️⃣
let characters = ["Captain": "Malcolm", "Engineer": "Kaylee"]
let captain = characters["Captain"] //Malcolm

//1️⃣2️⃣ ❌
let scores = ["Paul": 80, "Sophie": 100]
//let john = scores[john]
let john = scores["john"] //nil

//: [Next](@next)
