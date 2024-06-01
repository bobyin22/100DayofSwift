//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Closures don't use parameter labels.

//1️⃣
func fadeOut(completion: () -> Void) {
    print("Making the screen dim...")
    completion()
}
fadeOut(completion: { () -> Void in
    print("閉包執行")       //Making the screen dim...
})                         //閉包執行
//2️⃣
func getTransport(destination: String, method: (String, Int) -> Bool) {
    let maxCost = 10
    let result = method(destination, maxCost)
    if result {
        print("OK, you can travel.")
    } else {
        print("Sorry, you need more money.")
    }
}
getTransport(destination: "台東", method: { (a1:String, a2: Int) -> Bool in
    print("閉包\(a1)")
    print("閉包\(a2)")
    return true         //閉包台東
})                      //閉包10
                        //OK, you can travel.
//3️⃣
func sendNewsletter(getRecipients: () -> [String]) {
    let recipients = getRecipients()
    for person in recipients {
        print("I'm sending an email to \(person)")
    }
}
sendNewsletter(getRecipients: { () -> [String] in       //I'm sending an email to 組長
    let myArray = ["組長", "經理", "總經理"]               //I'm sending an email to 經理
    return myArray                                      //I'm sending an email to 總經理
})
//4️⃣ ❌ 函式的參數3是個閉包，閉包有參數1是字串，閉包回傳字串
//func buyDevices(name: String, count: Int, configurator: () -> String) {
//    print("I'm buying \(count)x\(name).")
//    for _ in 0..<count {
//        let configuredDevice = configurator(name)
//        print(configuredDevice)
//    }
//}
func buyDevices(name: String, count: Int, configurator: (String) -> String) {
    print("I'm buying \(count)x\(name).")
    for _ in 0..<count {
        let configuredDevice = configurator(name)
        print(configuredDevice)
    }
}
buyDevices(name: "蘋果手機", count: 2, configurator: { (a1:String) -> String in
    let myString = "任何字串"
    return myString
})

//I'm buying 2x蘋果手機.
//任何字串
//任何字串

//5️⃣ ❌ 閉包有2個參數但是這邊只寫1個
//       函式參數1是閉包，閉包有參數1是字串參數2是字串回傳字串，
//func raceCar(with closure: (String, String) -> String) {
//    let driver = "Lewis Hamilton"
//    let team = "Mercedes"
//    let raceResult = closure(driver)
//    print("The result is in: \(raceResult)!")
//}
func raceCar(with closure: (String, String) -> String) {
    let driver = "Lewis Hamilton"
    let team = "Mercedes"
    let raceResult = closure(driver, team)
    print("The result is in: \(raceResult)!")
}
raceCar(with: { (a1: String, a2: String) -> String in
    print("閉包的參數1是: \(a1), 閉包的參數2是: \(a2)")
    return "WeMo 摩托車"
})

//閉包的參數1是: Lewis Hamilton, 閉包的參數2是: Mercedes
//The result is in: WeMo 摩托車!

//6️⃣ ❌ 閉包有兩個參數，必須用逗號分開
//func printDocument(_ document: String, configurationCheck: (String Int) -> Bool) {
//    let copies = 1
//    let isAllowed = configurationCheck(document, copies)
//    if isAllowed {
//        print("Printing now.")
//    } else {
//        print("That document can't be printed.")
//    }
//}
func printDocument(_ document: String, configurationCheck: (String, Int) -> Bool) {
    let copies = 1
    let isAllowed = configurationCheck(document, copies)
    if isAllowed {
        print("Printing now.")
    } else {
        print("That document can't be printed.")
    }
}
printDocument("官方文件", configurationCheck: { (a1: String, a2: Int) -> Bool in
    print("閉包參數1是\(a1) 閉包參數2是\(a2)")
    return true
})

//閉包參數1是官方文件 閉包參數2是1
//Printing now.

//7️⃣ ❌ 函式參數2是閉包，閉包有1個參數且即使沒有回傳值也要寫 -> Void
//func takeTest(topic: String, test: (Int)) {
//    let minutes = 120
//    print("Today's test is on \(topic).")
//    print("You have \(minutes) minutes.")
//    test(minutes)
//}
func takeTest(topic: String, test: (Int)->Void) {
    let minutes = 120
    print("Today's test is on \(topic).")
    print("You have \(minutes) minutes.")
    test(minutes)
}
takeTest(topic: "數學", test: { (a1: Int) -> Void in
    print("印出閉包這一行")
})

//Today's test is on 數學.
//You have 120 minutes.
//印出閉包這一行

//8️⃣
func sleep(haveDream: () -> String) {
    print("Yawn... time for bed.")
    let dream = haveDream()
    print("I had a dream about \(dream).")
}
sleep(haveDream: { () -> String in
    return "sleep函式內的閉包"        //Yawn... time for bed.
})                                  //I had a dream about sleep函式內的閉包.
//9️⃣
func playSong(instrumentClosure: (String, Int) -> Void) {
    let song = "Stairway to Heaven"
    let volume = 11
    print("I'm going to play \(song)...")
    instrumentClosure(song, volume)
}
playSong(instrumentClosure: { (a1: String, a2: Int) -> Void in
    print("印出參數1\(a1), 參數2\(a2)")
})

//I'm going to play Stairway to Heaven..
//印出參數1Stairway to Heaven, 參數211

//1️⃣0️⃣ ❌ 函式內的閉包有1個參數，但是在使用的時候不要寫(type: sandwichType) 要寫(sandwichType)
//func makeSandwich(type sandwichType: String, condimentClosure: (String) -> String) {
//    print("First you make a basic \(sandwichType) sandwich.")
//    print("Next, you add condiments...")
//    let newSandwichType = condimentClosure(type: sandwichType)
//    print("Now you have a \(newSandwichType).")
//}
func makeSandwich(type sandwichType: String, condimentClosure: (String) -> String) {
    print("First you make a basic \(sandwichType) sandwich.")
    print("Next, you add condiments...")
    let newSandwichType = condimentClosure(sandwichType)
    print("Now you have a \(newSandwichType).")
}
makeSandwich(type: "草莓口味", condimentClosure: { (a1: String) -> String in
    let badFlavor = "便便口味"
    return badFlavor
})
//First you make a basic 草莓口味 sandwich.
//Next, you add condiments...
//Now you have a 便便口味.

//1️⃣1️⃣ ❌ 閉包參數2是Int
//func runBarbecue(foods: [String], grillTechnique: (String, Int) -> Void) {
//    let spiceLevel = "10"
//    for food in foods {
//        grillTechnique(food, spiceLevel)
//    }
//}
func runBarbecue(foods: [String], grillTechnique: (String, Int) -> Void) {
    let spiceLevel = 10
    for food in foods {
        grillTechnique(food, spiceLevel)
    }
}
runBarbecue(foods: ["豬肉", "牛肉", "雞肉"], grillTechnique: { (a1: String, a2: Int) -> Void in
    print("閉包參數1是\(a1)，閉包參數2是\(a2)")
})
//閉包參數1是豬肉，閉包參數2是10
//閉包參數1是牛肉，閉包參數2是10
//閉包參數1是雞肉，閉包參數2是10

//1️⃣2️⃣
func authenticate(algorithm: (String, String) -> Bool) {
    print("Authenticating user")
    let username = "twostraws"
    let password = "fr0sties"
    let result = algorithm(username, password)
    if result {
        print("You're in!")
    } else {
        print("Try again.")
    }
}
authenticate(algorithm: { (a1: String, a2: String) -> Bool in
    print("閉包執行")
    return false
})
//Authenticating user
//閉包執行
//Try again.

//: [Next](@next)
