//: [Previous](@previous)

import Foundation

//1️⃣ ❌ 閉包的參數要在大括號{}裡面
//var signAutograph(to name: String) = {
//    print("To \(name), my #1 fan")
//}
//signAutograph(to: "Lisa")

//要改寫成
var signAutograph2 = { (name: (String)) -> (String) in
    return ("To \(name), my #1 fan")
}
signAutograph2("Lisa")

//2️⃣ ❌ 少了等於
//var paintPicture() {
//    print("Where are my watercolors?")
//}

var paintPicture = {
    print("Where are my watercolors?")
}

paintPicture()  //印出 Where are my watercolors?


//3️⃣
let learnSwift = {
    print("Closures are like functions")
}
learnSwift()    //印出Closures are like functions

//4️⃣
let greetUser = {
    print("Hi there!")
}
greetUser()     //印出Hi there!


//5️⃣
var connectVPN = {
    print("Connected!")
}
connectVPN()


//6️⃣ ❌ 少let 或是var
//takeCruise = {
//    print("A week of vacation!")
//}

var takeCruise = {
    print("A week of vacation!")
}
takeCruise()

//7️⃣ ❌ 少了等於
//let sing {
//    print("Tralala")
//}
//sing()

let sing = {
    print("Tralala")
}
sing()


//8️⃣ ❌ 大小寫不一樣
//var meetFriends = {
//    print("Let's watch a movie")
//}
//meetfriends()

var meetFriends = {
    print("Let's watch a movie")
}
meetFriends()

//9️⃣
let walkDog = {
    print("Let's go to the park")
}

//1️⃣0️⃣ ❌ 變數不用()
//let upgrade() = {
//    print("Upgrading...")
//}
//upgrade()

let upgrade = {
    print("Upgrading...")
}
upgrade()

//1️⃣1️⃣
var castVote = {
    print("I voted!")
}
castVote()

//1️⃣2️⃣
var takeMedicine = {
    print("I feel a little better")
}

//: [Next](@next)
