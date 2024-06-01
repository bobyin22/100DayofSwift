//: [Previous](@previous)

import Foundation

//1️⃣ ❌ 應該是 [1, 1, 2, 3, 5, 8]
var fibonacci = [1, 1, 2, 3, 5, 8]
//fibonacci.sorted() == [1, 2, 3, 5, 8]   //false
print(fibonacci.sorted())   //[1, 1, 2, 3, 5, 8]

//2️⃣
var usedNumbers = [Int]()
for i in 1...10 {
    usedNumbers.append(i)       //[1,2,3,4,5,6,7,8,9,10]
}
usedNumbers.count > 5           //true

//3️⃣ ❌ 應該是 == 0
let movies = ["A New Hope", "Empire Strikes Back", "Return of the Jedi"]
//movies.firstIndex(of: "A New Hope") == 4     //false
movies.firstIndex(of: "A New Hope")  == 0    //true


//4️⃣ ❌ 要用var 才能改值
//let heights = [1.0, 1.2, 1.15, 1.39]
var heights = [1.0, 1.2, 1.15, 1.39]
heights.remove(at: 0)   //heights 會變成[1.2, 1.15, 1.39]
heights.count == 3

//5️⃣
let spaceships = ["Serenity", "Enterprise"]
spaceships.contains("Serenity") //true

//6️⃣
let tens = [30, 20, 10]
tens.sorted() == [10, 20, 30]   //true

//7️⃣ ❌ insert要說在哪插入
var examScores = [100, 95, 92]
//examScores.insert(98)
examScores.insert(98, at: 3)    //[100, 95, 92]

//8️⃣
let cardGames = ["Poker", "Blackjack", "Whist"]
cardGames.firstIndex(of: "Whist") == 2  //true


//9️⃣ ❌ 要用var 才能改值
//let composers = ["Mozart", "Bach", "Beethoven"]
var composers = ["Mozart", "Bach", "Beethoven"]
composers.append("Chopin")  //["Mozart", "Bach", "Beethoven", "Chopin"]
composers.count == 4        //true

//1️⃣0️⃣
let marines = ["Apone", "Hicks", "Vasquez"]
marines.contains("Hicks")   //true

//1️⃣1️⃣ ❌ count 不是3是2
var results = [true, true, false, true]
results.remove(at: 2)   //[true, true, true]
results.count == 3      //2

//1️⃣2️⃣ ❌ 有大小寫之差
var breeds = ["Corgi", "Labrador", "Samoyed"]
breeds.contains("corgi")    //false


//: [Next](@next)
