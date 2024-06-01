//: [Previous](@previous)

import Foundation

//1️⃣
var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"
if let movie = favoriteMovie {
    print("Your favorite movie is \(movie).")   //Your favorite movie is The Life of Brian.
} else {
    print("You don't have a favorite movie.")
}

//2️⃣ weatherForecast 型別要是String? 才行，做if let判斷
//var weatherForecast: String = "sunny"
var weatherForecast: String? = "sunny"
if let forecast = weatherForecast {
    print("The forecast is \(forecast).")       //The forecast is sunny.
} else {
    print("No forecast available.")
}

//3️⃣
let song: String? = "Shake it Off"
if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")   //The name has 12 letters.
}

//4️⃣
let currentDestination: String? = nil
if let destination = currentDestination {
    print("We're walking to \(destination).")
} else {
    print("We're just wandering.")  //We're just wandering.
}

//5️⃣ ❌ 不能只寫if，要if let
//   ❌ if let tableHeight = tableHeight 目的是要做一個shadowed copy
let tableHeight: Double? = 100
//if tableHeight > 85.0 {
//    print("The table is too high.")
//}
if let tableHeight = tableHeight {
    print("The table is too high.")     //The table is too high.
}


//⭐️ 先確認nil，然後把值去比較85.0
//      成功就印出
let tableHeight1: Double? = 100
if let tableHeight1 = tableHeight1, tableHeight1 > 85.0 {
    print("The table is too high.")     //The table is too high.
}

//6️⃣ ❌ if let items 後面要用item
let menuItems: [String]? = ["Pizza", "Pasta"]
//if let items = menuItems {
//    print("There are \(menuItems.count) items to choose from.")
//}
if let items = menuItems {
    print("There are \(items.count) items to choose from.") //There are 2 items to choose from.
}

//7️⃣ ❌ 要給nil的話，型別要是Int?
//var score: Int = nil
var score: Int? = nil
score = 556
if let playerScore = score {
    print("You scored \(playerScore) points.")  //You scored 556 points.
}

//8️⃣
let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")    //Found Red at position 1.
}

print(albums.first) //Optional("Reputation")
print(albums.firstIndex(of: album)) //Optional(1)       aolbum字串是在元素1

//9️⃣
let userAge: Int? = 38
if let age = userAge {
    print("You are \(age) years old.")      //You are 38 years old.
}

//1️⃣0️⃣ ❌ 要寫if let = 變數
let favoriteTennisPlayer: String? = "Andy Murray"
//if player {
//    print("Let's watch \(player)'s highlights video on YouTube.")
//}
if let player = favoriteTennisPlayer {
    print("Let's watch \(player)'s highlights video on YouTube.")   //Let's watch Andy Murray's highlights video on YouTube.
}

//1️⃣1️⃣
var winner: String? = nil
winner = "Daley Thompson"
if let name = winner {
    print("And the winner is... \(name)!")  //And the winner is... Daley Thompson!
}

//1️⃣2️⃣ ❌ 要寫 if let ，賦值完後 做判斷
var bestScore: Int? = nil
bestScore = 101
//if bestScore > 100 {
//    print("You got a high score!")
//} else {
//    print("Better luck next time.")
//}
if let bestScore = bestScore, bestScore > 100 {
    print("You got a high score!")          //You got a high score!
} else {
    print("Better luck next time.")
}

//: [Next](@next)
