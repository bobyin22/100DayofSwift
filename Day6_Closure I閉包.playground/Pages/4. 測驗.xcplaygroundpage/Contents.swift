//: [Previous](@previous)

import Foundation

//1️⃣ ❌ 變數 是閉包 且沒有參數與回傳值
//var swift {
//    print("Cool - I can use closures!")
//}

var swift = { () -> Void in
    print("Cool - I can use closures!")
}

func writeCode(using language: () -> Void) {
    language()
    print("That'll be eleventy billion dollars, please.")
}

writeCode(using: swift) //Cool - I can use closures!
                        //That'll be eleventy billion dollars, please.


//2️⃣ ❌ 函式 參數1是一個閉包(閉包沒有參數 沒有回傳值)， 函式有回傳字串
//var playWithDog = {
//    print("Fetch!")
//}

var playWithDog = { () -> Void in
    print("Fetch!")
    
}
func play(using playType: () -> Void) -> String {
    print("Let's play a game")
    playType()
    return "有回傳值"
}


play(using: playWithDog)       //"Let's play a game"
                               //"Fetch!"
                               //回傳 "有回傳值"


//3️⃣ ❌ 呼叫函式時要有Label ， 函式內使用參數閉包要加上小括弧
var makeFromStraw = {                       //() -> Void in 要不要寫都可
    print("Let's build it out of straw")
}
//func buildHouse(using buildingStyle: () -> Void) {
//    buildingStyle
//    print("It's ready - can anyone blow it down?")
//}

func buildHouse(using buildingStyle: () -> Void) {
    buildingStyle()
    print("It's ready - can anyone blow it down?")
}

buildHouse(using: makeFromStraw)


//4️⃣
let awesomeTalk = {
    print("Here's a great talk!")
}
func deliverTalk(name: String, type: () -> Void) {
    print("My talk is called \(name)")
    type()
}
deliverTalk(name: "My Awesome Talk", type: awesomeTalk) //"My talk is called My Awesome Talk"
                                                        //"Here's a great talk!"

//5️⃣
let swanDive = {
    print("SWAN DIVE!")
}
func performDive(type dive: () -> Void) {
    print("I'm climbing up to the top")
    dive()
}
performDive(type: swanDive)     //I'm climbing up to the top
                                //SWAN DIVE!
//6️⃣
let helicopterTravel = {
    print("Get to the chopper!")
}
func travel(by travelMeans: () -> Void) {
    print("Let's go on vacation...")
    travelMeans()
}

travel(by: helicopterTravel)    //Let's go on vacation...
                                //Get to the chopper!
    

//7️⃣ ❌ 使用函式時，參數名稱要依照函式參數名
let evilRobot = {
    print("EXTERMINATE")
}
func buildRobot(personality: () -> Void) {
    print("Time to turn on the robot!")
    personality()
}
//buildRobot(using: evilRobot)
buildRobot(personality: evilRobot)      //Time to turn on the robot!
                                        //EXTERMINATE

//8️⃣
var goOnBike = {
    print("I'll take my bicycle.")
}
func race(using vehicleType: () -> Void) {
    print("Let's race!")
    vehicleType()
}
race(using: goOnBike)   //Let's race!
                        //I'll take my bicycle.


//9️⃣
var payCash = {
    print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
    print("I'll take this \(item).")
    payment()
}
buyClothes(item: "jacket", using: payCash)  //I'll take this jacket.
                                            //Here's the money.


//1️⃣0️⃣ ❌ 參數是字串
let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}
//func printDocument(contents: () -> Void) {
//    print("Connecting to printer...")
//    print("Sending document...")
//    contents(Bob)
//}

func printDocument(contents: (String) -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents("Bob")
}
printDocument(contents: resignation)    //Connecting to printer...
                                        //Sending document...
                                        //Dear Bob, I'm outta here!


//1️⃣1️⃣ ❌ 閉包有回傳值，函式要寫回傳字串
let driveSafely = {
    return "I'm being a considerate driver"
}
//func drive(using driving: () -> Void) {
//    print("Let's get in the car")
//    driving()
//    print("We're there!")
//}

func drive(using driving: () -> String) {
    print("Let's get in the car")
    driving()
    print("We're there!")
}
drive(using: driveSafely)   //Let's get in the car
                            //回傳 I'm being a considerate driver
                            //We're there!

//1️⃣2️⃣
var learnWithUnwrap = {
    print("Hey, this is fun!")
}
func learnSwift(using approach: () -> Void) {
    print("I'm learning Swift")
    approach()
}
learnSwift(using: learnWithUnwrap)  //I'm learning Swift
                                    //Hey, this is fun!


//: [Next](@next)
