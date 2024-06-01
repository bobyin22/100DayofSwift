//: [Previous](@previous)

import Foundation

//1️⃣
func playSong(_ name: String, notes: () -> String) {
    print("I'm going to play \(name).")
    let playedNotes = notes()
    print(playedNotes)
}
playSong("Mary Had a Little Lamb") {
    return "EDCDEEEDDDEGG"              //I'm going to play Mary Had a Little Lamb.
}                                       //EDCDEEEDDDEGG

//2️⃣
func activateAI(_ ai: () -> String) {
    print("Let's see what this thing can do...")
    let result = ai()
    print(result)
}
activateAI {
    return "Come with me if you want to live."      //Let's see what this thing can do...
}                                                   //Come with me if you want to live.


//3️⃣
//func playMusic(randomizer: () -> String) {
//    print("\(random()) is playing.")
//}

func playMusic(randomizer: () -> String) {
    print("\(randomizer()) is playing.")
}
playMusic {
    print("Sorry, I only have one playlist!")   //Sorry, I only have one playlist!
    return "Taylor Swift"                       //Taylor Swift is playing.
}


//4️⃣
func loadData(input: () -> String) {
    print("Loading...")
    let str = input()
    print("Loaded: \(str)")
}
loadData {
    return "He thrusts his fists against the posts"       //Loading...
}                                                         //Loaded: He thrusts his fists against the posts

//5️⃣ ❌ 呼叫函式時 參數二閉包的參數沒寫型別，xcode無法判斷
func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}

//manipulate(numbers: [1, 2, 3]) { (number:Int) in
//    return number * number
//}

manipulate(numbers: [1, 2, 3]) { (number:Int) in
    return number * number                              //Manipulating 1 produced 1
}                                                       //Manipulating 2 produced 4
                                                        //Manipulating 3 produced 9

//6️⃣
func encrypt(password: String, using algorithm: (String) -> String) {
    print("Encrypting password...")
    let result = algorithm(password)
    print("The result is \(result)")
}
encrypt(password: "t4ylor") { (password: String) in
    print("Using top secret encryption!")
    return "SECRET" + password + "SECRET"               //Encrypting password...
}                                                       //Using top secret encryption!
                                                        //The result is SECRETt4ylorSECRET

//7️⃣ ❌ 呼叫函式時，參數2是閉包 (閉包內要回傳字串if else都要)
func scoreToGrade(score: Int, gradeMapping: (Int) -> String) {
    print("Your score was \(score)%.")
    let result = gradeMapping(score)
    print("That's a \(result).")
}
//scoreToGrade(score: 80) { (grade: Int) in
//    if grade < 85 {
//        return "Fail"
//    }
//}

scoreToGrade(score: 80) { (grade: Int) in
    if grade < 85 {                             //Your score was 80%
        return "Fail"                           //That's a Fail
    } else {
        return "True"
    }
}


//8️⃣ ❌ 函式內 呼叫閉包時候，閉包有參數String要帶入
//func goShopping(for item: String, decisionHandler: (String) -> Bool) {
//    print("I'm going to buy \(item)")
//    if decisionHandler() == true {
//        print("Great! I bought them.")
//    } else {
//        print("Maybe next time...")
//    }
//}
func goShopping(for item: String, decisionHandler: (String) -> Bool) {
    print("I'm going to buy \(item)")
    if decisionHandler(item) == true {
        print("Great! I bought them.")
    } else {
        print("Maybe next time...")
    }
}

//呼叫方式1 閉包參數1寫型別
goShopping(for: "shoes") { (item:String) in          //I'm going to buy shoes
    if item == "shoes" {                             //Maybe next time...
        return false
    } else {
        return true
    }
}

//呼叫方式2 閉包參數1省略型別
goShopping(for: "shoes") { (item:String) in          //I'm going to buy shoes
    if item == "shoes" {                             //Maybe next time...
        return false
    } else {
        return true
    }
}

//9️⃣ ❌ 呼叫函式時要寫 參數2 閉包回傳的字串
func teachLesson(name: String, topic: () -> String) {
    print("Welcome to \(name).")
    print("Please take out your laptops and be quiet at the back.")
    topic()
    print("See you tomorrow!")
}
//teachLesson(name: "Swift 101") {
//    print("Swift is a modern language that can be used to make apps on iOS and more.")
//}

//呼叫方法1 🙄呆呆的寫閉包參數與回傳型別
teachLesson(name: "Swift 101") { () -> String in
    return ("Swift is a modern language that can be used to make apps on iOS and more.")
}

//呼叫方法2 😎帥氣不寫參數與回傳型別
teachLesson(name: "Swift 101") {
    return ("Swift is a modern language that can be used to make apps on iOS and more.")
}

//1️⃣0️⃣
func increaseBankBalance(start: Double, interestCalculator: () -> Double) {
    print("Your current balance is \(start).")
    let interestRate = interestCalculator()
    let withInterest = start * interestRate
    print("You now have \(withInterest).")
}

//呼叫方法1 🙄呆呆的寫閉包參數與回傳型別
increaseBankBalance(start: 200.0) { () -> Double in     //Your current balance is 200.0
    return 1.01                                         //You now have 202.0
}

//呼叫方法2 😎帥氣不寫參數與回傳型別
increaseBankBalance(start: 200.0) {                     //Your current balance is 200.0
    return 1.01                                         //You now have 202.0
}

//1️⃣1️⃣ ❌ 函式第1個參數要 參數名:值
func bakeCookies(number: Int, secretIngredient: () -> String) {
    for _ in 0..<number {
        print("Adding butter...")
        print("Adding flour...")
        print("Adding sugar...")
        print("Adding egg...")
        let extra = secretIngredient()
        print(extra)
    }
}
//bakeCookies(5) {
//    return "Adding vanilla extract"
//}
bakeCookies(number: 5) {
    return "Adding vanilla extract"         //Adding butter... 共4次
}                                           //Adding flour...
                                            //Adding sugar...
                                            //Adding egg...
                                            //Adding vanilla extract

//1️⃣2️⃣ ❌ 函式參數1閉包 (呼叫閉包時，要帶入參數字串)
//func printGreeting(for usernameLoader: (String) -> String) {
//    let username = usernameLoader()
//    print("Hello, \(username)!")
//}
func printGreeting(for usernameLoader: (String) -> String) {
    let username = usernameLoader("Bob")
    print("Hello, \(username)!")
}
//printGreeting {
//    return "twostraws"
//}

//呼叫函式
printGreeting { (a1: String) -> String in
    return "twostraws"                                      //Hello, twostraws!
}


//: [Next](@next)
