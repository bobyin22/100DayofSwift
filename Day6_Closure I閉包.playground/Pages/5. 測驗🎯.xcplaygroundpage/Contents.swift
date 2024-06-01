//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: When using trailing closure syntax, you remove the final parameter name entirely and write your code after the function in braces.

//1️⃣ ❌ 呼叫函式，因為是trailing clousre 如果要要寫參數2 要向我寫得一樣
func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
//holdClass("Philosophy 101", lesson:) {
//    print("All we are is dust in the wind, dude.")
//}
holdClass(name: "Philosophy 101") {                         //Welcome to 深入淺出Swift!
    print("All we are is dust in the wind, dude.")          //快來一起打造App
}                                                           //Make sure your homework is done by next week.

holdClass(name: "深入淺出Swift", lesson: { () -> Void in     //Welcome to 深入淺出Swift!
    print("快來一起打造App")                                  //快來一起打造App
})                                                          //Make sure your homework is done by next week.

//2️⃣ 呼叫函式寫錯
func phoneFriend(conversation: () -> Void) {
    print("Calling 555-1234...")
    conversation()
}
//phoneFriend:
//    print("Hello!")
//    print("A foreign prince wants to give you $5 million.")
//    print("What are your bank details?")
phoneFriend(conversation: { () -> Void in                       //Calling 555-1234...
    print("Hello!")                                             //Hello!
    print("A foreign prince wants to give you $5 million.")     //A foreign prince wants to give you $5 million.
    print("What are your bank details?")                        //What are your bank details?
})

phoneFriend {                                                   //Calling 555-1234...
    print("Hello!")                                             //Hello!
    print("A foreign prince wants to give you $5 million.")     //A foreign prince wants to give you $5 million.
    print("What are your bank details?")                        //What are your bank details?
}

//3️⃣
func doTricks(_ tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}

doTricks({ () -> Void in
    print("閱讀中")        //Start recording now!
})                        //閱讀中
                          //Did you get all that?

//4️⃣
func tendGarden(activities: () -> Void) {
    print("I love gardening")
    activities()
}
tendGarden {
    print("Let's grow some roses!")     //I love gardening
}                                       //Let's grow some roses!

//5️⃣
func makeCake(instructions: () -> Void) {
    print("Wash hands")
    print("Collect ingredients")
    instructions()
    print("Here's your cake!")
}
makeCake {                              //Wash hands
    print("Mix egg and flour")          //Collect ingredients
}                                       //Mix egg and flour
                                        //Here's your cake!
//6️⃣ ❌
//func brewTea(steps: ()) {
//    print("Get tea")
//    print("Get milk")
//    print("Get sugar")
//    steps()
//}
func brewTea(steps: () -> Void) {
    print("Get tea")
    print("Get milk")
    print("Get sugar")
    steps()
}
brewTea {                               //Get tea
    print("Brew tea in teapot.")        //Get milk
    print("Add milk to cup")            //Get sugar
    print("Pour tea into cup")          //Brew tea in teapot.
    print("Add sugar to taste.")        //Add milk to cup
}                                       //Pour tea into cup
                                        //Add sugar to taste.
//7️⃣
//func assembleToy(instruction: () -> Void) {
//    instructions()
//    print("It's done!")
//}
func assembleToy(instruction: () -> Void) {
    instruction()
    print("It's done!")
}
assembleToy {                           //Grok the glib
    print("Grok the glib")              //Flop the flip
    print("Flop the flip")              //Click the clack
    print("Click the clack")            //It's done!
}
//8️⃣
//func knitSweater(then: () -> Void) {
//    print("Buy wool")
//    for _ in 1...100 {
//        print("Knit knit knit...")
//    }
//    action()
//}
func knitSweater(action: () -> Void) {
    print("Buy wool")
    for _ in 1...100 {
        print("Knit knit knit...")
    }
    action()
}
knitSweater {                               //Buy wool
    print("Who wants to buy a sweater?")    //Knit knit knit... 100次
}                                           //Who wants to buy a sweater?
//9️⃣
func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}
repeatAction(count: 5) {        //Hello, world!
    print("Hello, world!")      //Hello, world!
}                               //Hello, world!
                                //Hello, world!
                                //Hello, world!
//1️⃣0️⃣
func clean(tasks: () -> Void) {
    print("It's time to clean the house.")
    tasks()
}
//clean [
//    print("I'm going to clean the kitchen.")
//    print("I'm going to tidy the study.")
//    print("I'm going to nuke the kids' room.")
//]
clean {                                           //It's time to clean the house.
    print("I'm going to clean the kitchen.")      //I'm going to clean the kitchen.
    print("I'm going to tidy the study.")         //I'm going to tidy the study.
    print("I'm going to nuke the kids' room.")    //I'm going to nuke the kids' room.
}
//1️⃣1️⃣  函式參數1 是閉包，可以有外部Label
func goCamping(then action: () -> Void) {
    print("We're going camping!")
    action()
}
goCamping {                     //We're going camping!
    print("Sing songs")         //Sing songs
    print("Put up tent")        //Put up tent
    print("Attempt to sleep")   //Attempt to sleep
}
//1️⃣2️⃣
func goOnVacation(to destination: String, _ activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}
goOnVacation(to: "Mexico") {    //Packing bags...
    print("Go sightseeing")     //Getting on plane to Mexico...
    print("Relax in sun")       //Go sightseeing
    print("Go hiking")          //Relax in sun
}                               //Go hiking
//: [Next](@next)
