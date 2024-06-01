//: [Previous](@previous)

import Foundation

//1️⃣
func fadeOut(completion: () -> Void) {
    print("Making the screen dim...")
    completion()
}

fadeOut(completion: {           //Making the screen dim...
    print("走到閉包這邊了")        //走到閉包這邊了
})


fadeOut { () -> Void in         //Making the screen dim...
    print("走到閉包這邊了")        //走到閉包這邊了
}

fadeOut {
    print("走到閉包這邊了")        //Making the screen dim...
}                               //走到閉包這邊了

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

getTransport(destination: "永和", method: { (a1: String, a2: Int) -> Bool in
    return true                                                                 //OK, you can travel.
})

//
getTransport(destination: "中和") { a1, a2 in                                    //Sorry, you need more money.
    return false
}

getTransport(destination: "中和") { _, _ in                                      //Sorry, you need more money.
    false
}

//3️⃣
func sendNewsletter(getRecipients: () -> [String]) {
    let recipients = getRecipients()
    for person in recipients {
        print("I'm sending an email to \(person)")
    }
}

sendNewsletter(getRecipients: { () -> [String] in
    return ["Bob", "YenLu", "Joy", "YiJan"]             //I'm sending an email to Bob
})                                                      //I'm sending an email to YenLu
                                                        //I'm sending an email to Joy
                                                        //I'm sending an email to YiJan
//4️⃣ ❌閉包沒有參數
//func buyDevices(name: String, count: Int, configurator: () -> String) {
//    print("I'm buying \(count)個\(name).")
//    for _ in 0..<count {
//        let configuredDevice = configurator(name)
//        print(configuredDevice)
//    }
//}
func buyDevices(name: String, count: Int, configurator: () -> String) {
    print("I'm buying \(count)個\(name).")
    for _ in 0..<count {
        let configuredDevice = configurator()
        print(configuredDevice)
    }
}

buyDevices(name: "iPhone15", count: 2, configurator: { () -> String in      //I'm buying 2個iPhone15.
    return "我會考100分的，麻麻"                                               //我會考100分的，麻麻
})                                                                          //我會考100分的，麻麻
    
buyDevices(name: "macAir", count: 3) {                                      //I'm buying 3個macAir.
    return "我會考101分的，拔拔"                                               //我會考101分的，拔拔
}                                                                           //我會考101分的，拔拔

//5️⃣ ❌呼叫閉包少參數2
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
raceCar(with: { (a1: String, a2: String) -> String in       //執行閉包
    print("執行閉包")                                        //The result is in: 回傳閉包!
    return "回傳閉包"
})

raceCar { _, _ in
    print("執行閉包2")                                      //執行閉包2
    return "回傳閉包2"                                      //The result is in: 回傳閉包2!
}

//6️⃣
func printDocument(_ document: String, configurationCheck: (String, Int) -> Bool) {
    let copies = 1
    let isAllowed = configurationCheck(document, copies)
    if isAllowed {
        print("Printing now.")
    } else {
        print("That document can't be printed.")
    }
}

printDocument("參考書", configurationCheck: { (String, Int) -> Bool in     //Printing now.
    return true
})

printDocument("閒書") { _, _ -> Bool in                            //That document can't be printed.
    return false
}

//7️⃣ ❌ 函式的參數2是tuple不是閉包
//func takeTest(topic: String, test: (Int)) {
//    let minutes = 120
//    print("Today's test is on \(topic).")
//    print("You have \(minutes) minutes.")
//    test(minutes)
//}
func takeTest(topic: String, test: (Int) -> String) {
    let minutes = 120
    print("Today's test is on \(topic).")
    print("You have \(minutes) minutes.")
    test(minutes)
}

takeTest(topic: "數學", test: { (a1: Int) in          //Today's test is on 數學.
    print ("\(a1)分鐘，考試計時開始")                   //You have 120 minutes.
    return "123"                                     //120分鐘，考試計時開始
                                                 
})

//8️⃣
func sleep(haveDream: () -> String) {
    print("Yawn... time for bed.")
    let dream = haveDream()
    print("I had a dream about \(dream).")
}

sleep(haveDream: { () -> String in          //Yawn... time for bed.
    return "我夢見我跟賈伯斯一起吃早餐"          //I had a dream about 我夢見我跟賈伯斯一起吃早餐.
})

//9️⃣
func playSong(instrumentClosure: (String, Int) -> Void) {
    let song = "Stairway to Heaven"
    let volume = 11
    print("I'm going to play \(song)...")
    instrumentClosure(song, volume)
}

playSong(instrumentClosure: { (a1: String, a2: Int) -> () in  //I'm going to play Stairway to Heaven...
    print("我會唱她專輯第\(a2)首，著名歌手的\(a1)歌曲")             //我會唱她專輯第11首，著名歌手的Stairway to Heaven歌曲
})

playSong { a1, a2 in                                          //I'm going to play Stairway to Heaven...
    print("我會唱他專輯第\(a2)首，著名歌手的\(a1)歌曲")             //我會唱他專輯第11首，著名歌手的Stairway to Heaven歌曲
}

//1️⃣0️⃣ 閉包呼叫時不需要參數名
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


//呼叫方法1
makeSandwich(type: "草莓", condimentClosure: { (a1: String) -> String in      //First you make a basic 草莓 sandwich.
    return "閉包\(a1)三明治"                                                   //Next, you add condiments...
})                                                                           //Now you have a 閉包草莓三明治.

//呼叫方法2
makeSandwich(type: "花生") { a1 -> String in
    return "閉包\(a1)三明治"
}

//1️⃣1️⃣ ❌函式內 參數2閉包 (閉包參數2是Int 而不是String)
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

runBarbecue(foods: ["雞肉片", "香腸", "玉米"], grillTechnique: { (a1: String, a2: Int) -> Void in  //今天食材有雞肉片 10份
    print("今天食材有\(a1) \(a2)份")                                                              //今天食材有香腸 10份
})                                                                                              //今天食材有玉米 10份
     

runBarbecue(foods: ["雞肉片", "香腸", "玉米"], grillTechnique: { material, quantity in
    print("今天食材有\(material) \(quantity)份")
})

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

authenticate(algorithm: { (a1: String, a2: String) -> Bool in       //Authenticating user
    return true                                                     //You're in!
})

authenticate(algorithm: { myName, myPassWord in                     //Authenticating user
    return false                                                     //Try again.
})
//: [Next](@next)
