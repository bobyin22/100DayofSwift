//: [Previous](@previous)

import Foundation

//1️⃣ ❌ 呼叫時還是要有 函式名(參數1 參數2)，只是閉包變成兩行
func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
//holdClass("Philosophy 101", lesson:) {
//    print("All we are is dust in the wind, dude.")
//}

holdClass(name: "Philosophy 101", lesson: {
    print("All we are is dust in the wind, dude.")
})

//2️⃣ ❌ 呼叫時閉包可寫成() {}
func phoneFriend(conversation: () -> Void) {
    print("Calling 555-1234...")
    conversation()
}
//phoneFriend:
//    print("Hello!")
//    print("A foreign prince wants to give you $5 million.")
//    print("What are your bank details?")

phoneFriend(conversation: {
    print("執行conversation閉包")       //Calling 555-1234...
})                                     //執行conversation閉包


//3️⃣
func doTricks(_ tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}

doTricks({
    print("因為參數用_直接省略不用參數名")        //Start recording now!
})                                          //因為參數用_直接省略不用參數名
                                            //Did you get all that?


//4️⃣
func tendGarden(activities: () -> Void) {
    print("I love gardening")
    activities()
}

//一般
tendGarden(activities: {
    print("Let's grow some SunFlower!") //I love gardening
})                                      //Let's grow some SunFlower!

//最簡寫
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
makeCake {
    print("Mix egg and flour")
}



//6️⃣


//7️⃣


//8️⃣


//9️⃣


//1️⃣0️⃣


//1️⃣1️⃣


//1️⃣2️⃣



//: [Next](@next)
