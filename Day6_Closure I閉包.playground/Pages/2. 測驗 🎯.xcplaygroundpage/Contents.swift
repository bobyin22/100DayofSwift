//: [Previous](@previous)

import Foundation
//This code is valid Swift – true or false?
//Hint: ⭐️Parameters to closures don't have external names, and must have a type specified.

//1️⃣
var cleanRoom = { (name: String) in
    print("I'm cleaning the \(name).")
}
cleanRoom("kitchen")    //I'm cleaning the kitchen

//2️⃣
var sendMessage = { (message: String) in
    if message != "" {
        print("Sending to Twitter: \(message)")
    } else {
        print("Your message was empty.")
    }
}
sendMessage("出大事了阿北")   //Sending to Twitter: 出大事了阿北

//3️⃣
var click = { (button: Int) in
    if button >= 0 {
        print("Button \(button) was clicked.")
    } else {
        print("That button doesn't exist.")
    }
}
click(5)    //Button 5 was clicked.

//4️⃣ ❌ 缺少 let 或 var
//printDocument = { (copies: Int) in
//    for _ in 1...copies {
//        print("Printing document...")
//    }
//}
var printDocument = { (copies: Int) in
    for _ in 1...copies {
        print("Printing document...")
    }
}
printDocument(3)    //Printing document...
                    //Printing document...
                    //Printing document...

//5️⃣ ❌ 需要是Double
var shareWinnings = { (amount: Double) in
    let half = amount / 2.0
    print("It's \(half) for me and \(half) for you.")
}
//shareWinnings("50")
shareWinnings(50.0) //It's 25 for me and 25 for you.

//6️⃣ ❌ 型別是String case也要是String
//var pickFruit = { (name: String) in
//    switch name {
//    case strawberry:
//        fallthrough
//    case raspberry:
//        print("Strawberries and raspberries are half price!")
//    default:
//        print("We don't have those.")
//    }
//}
var pickFruit = { (name: String) in
    switch name {
    case "strawberry":
        fallthrough
    case "raspberry":
        print("Strawberries and raspberries are half price!")
    default:
        print("We don't have those.")
    }
}

pickFruit("strawberry") //Strawberries and raspberries are half price!

//7️⃣ 是可以，但是比較好是 = { (answer: Int) in
let calculateResult = { (answer) in
    if answer == 42 {
        print("You're correct!")
    } else {
        print("Try again.")
    }
}
calculateResult(42)

//8️⃣
let fixCar = { (problem: String) in
    print("I fixed the \(problem).")
}
fixCar("引擎")    //I fixed the 引擎.

//9️⃣
let makeReservation = { (people: Int) in
    print("I'd like a table for \(people), please.")
}
makeReservation(5)  //I'd like a table for 5, please.

//1️⃣0️⃣
//var cutGrass = { (length currentLength: Double) in
//    switch currentLength {
//    case 0...1:
//        print("That's too short")
//    case 1...3:
//        print("It's already the right length")
//    default:
//        print("That's perfect.")
//    }
//}
var cutGrass = { (currentLength: Double) in
    switch currentLength {
    case 0...1:
        print("That's too short")
    case 1...3:
        print("It's already the right length")
    default:
        print("That's perfect.")
    }
}
cutGrass(2.5)   //It's already the right length

//1️⃣1️⃣
let watchTV = { (channel: String) in
    print("I'm going to watch some \(channel)")
}
//watch_TV("BBC News")
watchTV("BBC News") //I'm going to watch some BBC News

//1️⃣2️⃣
let rowBoat = { (distance: Int) in
    for _ in 1...distance {
        print("I'm rowing 1km.")
    }
}
rowBoat(5)      //I'm rowing 1km.
                //I'm rowing 1km.
                //I'm rowing 1km.
                //I'm rowing 1km.
                //I'm rowing 1km.

//: [Next](@next)
