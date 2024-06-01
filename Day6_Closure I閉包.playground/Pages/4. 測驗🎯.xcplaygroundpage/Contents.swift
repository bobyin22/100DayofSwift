//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Make sure all the parameters and return values have the correct types.

//1️⃣
//var swift {
//    print("Cool - I can use closures!")
//}
var swift = {
    print("Cool - I can use closures!")
}
swift()                           //Cool - I can use closures!

func writeCode(using language: () -> Void) {
    language()
    print("That'll be eleventy billion dollars, please.")
}
writeCode(using: { () -> Void in
    print("印出東西")               //印出東西
})                                 //That'll be eleventy billion dollars, please.

//2️⃣ 閉包寫說要回傳字串 body內要寫return
var playWithDog = {
    print("Fetch!")
}
//func play(using playType: () -> Void) -> String {
//    print("Let's play a game")
//    playType()
//}
func play(using playType: () -> Void) -> String {
    print("Let's play a game")
    playType()
    return "回傳play 字串"
}
play(using: playWithDog)            //Let's play a game
                                    //Fetch!
                                    //回傳play 字串
//3️⃣ ⭐️ 跟我IAM MVVM寫法有點像
var makeFromStraw = {
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
buildHouse(using: makeFromStraw)    //Let's build it out of straw
                                    //It's ready - can anyone blow it down?

/*
 class HomeVM {
     //建立一個閉包變數
     var inAppBrowserAction: ((String) -> Void)?
     //函式 裡面使用 閉包變數
     @objc func DynamicLinksNotificationJob(notification: Notification){
         
         if let action = inAppBrowserAction {
             action(link)
         }
     }
 }


 class HomeVC: UIViewController {
     private let viewModel = HomeViewModel()
     override func viewDidLoad() {
         super.viewDidLoad()
        
        //只有當VM告訴VC要執行時，才會執行，一開始打開畫面不會執行 (VM與VC溝通，讓VC執行動作)
         viewModel.inAppBrowserAction = { [weak self] url in
             self?.inAppBrower(url)
         }
     }
 }
 */
//4️⃣
let awesomeTalk = {
    print("Here's a great talk!")
}
func deliverTalk(name: String, type: () -> Void) {
    print("My talk is called \(name)")
    type()
}
deliverTalk(name: "My Awesome Talk", type: awesomeTalk)     //My talk is called My Awesome Talk
                                                            //Here's a great talk!
//5️⃣
let swanDive = {
    print("SWAN DIVE!")
}
func performDive(type dive: () -> Void) {
    print("I'm climbing up to the top")
    dive()
}
performDive(type: swanDive)             //I'm climbing up to the top
                                        //SWAN DIVE!
//6️⃣
let helicopterTravel = {
    print("Get to the chopper!")
}
func travel(by travelMeans: () -> Void) {
    print("Let's go on vacation...")
    travelMeans()
}
travel(by: helicopterTravel)            //Let's go on vacation...
                                        //Get to the chopper!
//7️⃣ ❌ 參數名寫錯，要是personality
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
race(using: goOnBike)       //Let's race!
                            //I'll take my bicycle.
//9️⃣
var payCash = {
    print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
    print("I'll take this \(item).")
    payment()
}
buyClothes(item: "jacket", using: payCash)      //I'll take this jacket.
                                                //Here's the money.
//1️⃣0️⃣ 函式 參數1是閉包，閉包參數1是字串沒有回傳
//     函式內呼叫閉包時要記得帶入參數1是字串
let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}
//func printDocument(contents: () -> Void) {
//    print("Connecting to printer...")
//    print("Sending document...")
//    contents()
//}
func printDocument(contents: (String) -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents("Bob")
}
printDocument(contents: resignation)            //Connecting to printer...
                                                //Sending document...
                                                //Dear Bob, I'm outta here!

//1️⃣1️⃣ 函式參數1是閉包回傳字串，閉包沒有參數沒有回傳
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
drive(using: driveSafely)       //Let's get in the car
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
