//: [Previous](@previous)

import Foundation

//1️⃣
var cleanRoom = { (name: String) in
    print("I'm cleaning the \(name).")
}
cleanRoom("kitchen")    //I'm cleaning the kitchen.

//2️⃣
var sendMessage = { (message: String) in
    if message != "" {
        print("Sending to Twitter: \(message)")
    } else {
        print("Your message was empty.")
    }
}
sendMessage("亂打")   //Sending to Twitter: 亂打

//3️⃣
var click = { (button: Int) in
    if button >= 0 {
        print("Button \(button) was clicked.")
    } else {
        print("That button doesn't exist.")
    }
}
click(2)    //Button 2 was clicked.


//4️⃣ ❌ 沒有var或let
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

//5️⃣ ❌參數要Double才給過
//var shareWinnings = { (amount: Double) in
//    let half = amount / 2.0
//    print("It's \(half) for me and \(half) for you.")
//}
//shareWinnings("50")


var shareWinnings = { (amount: Double) in
    let half = amount / 2.0
    print("It's \(half) for me and \(half) for you.")
}
shareWinnings(50.0) //It's 25.0 for me and 25.0 for you.

//6️⃣ ❌case 要用字串比
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
//
//pickFruit("strawberry")


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



//7️⃣ ❌要加上型別
//let calculateResult = { (answer) in
//    if answer == 42 {
//        print("You're correct!")
//    } else {
//        print("Try again.")
//    }
//}
//
//calculateResult(42)

let calculateResult = { (answer: Int) in
    if answer == 42 {
        print("You're correct!")
    } else {
        print("Try again.")
    }
}

calculateResult(42) //You're correct!


//8️⃣
let fixCar = { (problem: String) in
    print("I fixed the \(problem).")
}
fixCar("Honda Fit") //I fixed the Honda Fit.

//9️⃣
let makeReservation = { (people: Int) in
    print("I'd like a table for \(people), please.")
}
makeReservation(4)  //I'd like a table for 4, please.

//1️⃣0️⃣ ❌ 閉包不能用 外部參數Label
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
cutGrass(0.1)   //That's too short


//1️⃣1️⃣ ❌ 變數大小寫要一致
//let watchTV = { (channel: String) in
//    print("I'm going to watch some \(channel)")
//}
//watch_TV("BBC News")


let watchTV = { (channel: String) in
    print("I'm going to watch some \(channel)")
}
watchTV("BBC News") //I'm going to watch some BBC News

//1️⃣2️⃣
let rowBoat = { (distance: Int) in
    for _ in 1...distance {
        print("I'm rowing 1km.")
    }
}
rowBoat(5)  //I'm rowing 1km.
            //I'm rowing 1km.
            //I'm rowing 1km.
            //I'm rowing 1km.
            //I'm rowing 1km.



//: [Next](@next)
