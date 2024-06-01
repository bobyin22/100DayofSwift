//: [Previous](@previous)

import Foundation

//1️⃣ ❌ count不會有optional
let names = ["Taylor", "Paul", "Adele"]
print(names.last)           //Optional("Adele")
print(names.last?.count)    //Optional(5)

//let lengthOfLast = names.last?.count?
let lengthOfLast = names.last?.count //5

//2️⃣ ❌ 陣列first可能會沒有值 所以要有optional
let credentials = ["twostraws", "fr0sties"]
//let lowercaseUsername = credentials.first.lowercased()
let lowercaseUsername = credentials.first?.lowercased()     //twostraws

//3️⃣
let songs: [String]? = [String]()
let finalSong = songs?.last?.uppercased()   //nil

//4️⃣
func albumReleased(in year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let album = albumReleased(in: 2006)?.uppercased()   //TAYLOR SWIFT

//5️⃣ 型別必須是optional才能 後面用 變數?
//let attendees: [String] = [String]()
let attendees: [String]? = [String]()
let firstInLine = attendees?.first?.uppercased()

//6️⃣
let shoppingList = ["eggs", "tomatoes", "grapes"]
print(shoppingList.first)   //Optional("eggs")
shoppingList.first?.appending(" are on my shopping list")       //這並不會修改原始的 shoppingList 陣列，而是只會返回修改後的結果
let firstItem = shoppingList.first?.appending(" are on my shopping list")
print(firstItem)            //Optional("eggs are on my shopping list")
print(shoppingList)         //["eggs", "tomatoes", "grapes"]


let modifiedList = shoppingList.enumerated().map { index, item in
    index == 0 ? "\(item) are on my shopping list" : item       //三元運算子 condition ? valueIfTrue : valueIfFalse
}
print(modifiedList)     //["eggs are on my shopping list", "tomatoes", "grapes"]

//7️⃣ ❌
//  [String]? 型別有可能是nil，所以要captains?
//  .last可能會沒有值，所以要last?

//let captains: [String]? = ["Archer", "Lorca", "Sisko"]?
let captains: [String]? = ["Archer", "Lorca", "Sisko"]
//let lengthOfBestCaptain = captains.last?.count
let lengthOfBestCaptain = captains?.last?.count

//8️⃣ ❌ -> String 型別要 -> String? 才需要 loadForecast(for: 3)?
//func loadForecast(for dayNumber: Int) -> String {
//    print("Forecast unavailable.")
//    return nil
//}
func loadForecast(for dayNumber: Int) -> String? {
    print("Forecast unavailable.")
    return nil
}
let forecast = loadForecast(for: 3)?.uppercased()   //Forecast unavailable.

//9️⃣ ❌ capitals["Bob"] 可能會是nil，所以要capitals["Bob"]?
let capitals = ["Scotland": "Edinburgh", "Wales": "Cardiff"]
let scottishCapital = capitals["Scotland"]?.uppercased()    //EDINBURGH

//1️⃣0️⃣
let favoriteColors = ["Paul": "Red", "Charlotte": "Pink"]
let charlotteColor = favoriteColors["Charlotte"]?.lowercased()  //pink

//1️⃣1️⃣ ❌ opposites["light"] 是nil，所以也不走後面uppercased了
let opposites = ["hot": "cold", "near": "far"]
//let oppositeOfLight = opposites["light"].uppercased()
let oppositeOfLight = opposites["light"]?.uppercased()  //nil

//1️⃣2️⃣
let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")     //false

//: [Next](@next)
