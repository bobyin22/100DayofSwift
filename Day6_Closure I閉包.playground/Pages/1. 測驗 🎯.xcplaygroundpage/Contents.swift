//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Closures don't take parameters in parentheses, and they are case-sensitive just like regular functions.

//1️⃣ 尾端閉包 參數要放在大括弧內
//var signAutograph(to name: String) = {
//    print("To \(name), my #1 fan")
//}
var signAutograph = { (name: String) -> Void in
    print("To \(name), my #1 fan")
}
signAutograph("Lisa")   //To Lisa, my #1 fan

//2️⃣ 尾端閉包 變數不用()
//var paintPicture() {
//    print("Where are my watercolors?")
//}
var paintPicture: () -> () = { () -> () in     //第一個()->()是屬性，第二個()->()是參數
    print("Where are my watercolors?")
}
paintPicture()  //Where are my watercolors?

//3️⃣
let learnSwift = {
    print("Closures are like functions")
}
learnSwift()    //Closures are like functions

//4️⃣
let greetUser = {
    print("Hi there!")
}
greetUser()     //Hi there!

//5️⃣
var connectVPN = {
    print("Connected!")
}
connectVPN()    //Connected!

//6️⃣ 需要 let 或 var
//takeCruise = {
//    print("A week of vacation!")
//}
let takeCruise = {
    print("A week of vacation!")
}
takeCruise()    //A week of vacation!

//7️⃣ 變數後要 =
//let sing {
//    print("Tralala")
//}
//sing()
let sing = {
    print("Tralala")
}
sing()

//8️⃣
var meetFriends = {
    print("Let's watch a movie")
}
//meetfriends()
meetFriends()   //Let's watch a movie

//9️⃣
let walkDog = {
    print("Let's go to the park")
}
walkDog()

//1️⃣0️⃣
//let upgrade() = {
//    print("Upgrading...")
//}
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
