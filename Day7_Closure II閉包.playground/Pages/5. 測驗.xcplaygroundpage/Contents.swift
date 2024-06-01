//: [Previous](@previous)

import Foundation

//1️⃣
func createValidator() -> (String) -> Bool {
    return {
        if $0 == "twostraws" {
            return true
        } else {
            return false
        }
    }
}
let validator = createValidator()       //函式回傳閉包，賦值給變數
print(validator("twostraws"))           //呼叫閉包(閉包有參數1是字串，閉包回傳布林值)
                                        
                                        //true

//2️⃣
func makeRecorder(media: String) -> () -> String {
    switch media {
    case "podcast":
        return {
            return "I'm recording a podcast"
        }
    default:
        return {
            return "I'm recording a video"
        }
    }
}



//方式1
let recorder1 = makeRecorder(media: "podcast")   //函式回傳閉包，賦值給變數
let myVariable =  recorder1()
print(myVariable)                   //I'm recording a podcast

//方式2
let recorder2 = makeRecorder(media: "radio")   //函式回傳閉包，賦值給變數
print(recorder2())                   //I'm recording a video

//3️⃣
func createTravelMethod(distance: Int) -> (String) -> Void {
    if distance < 5 {
        return {
            print("I'm walking to \($0).")
        }
    } else if distance < 20 {
        return {
            print("I'm cycling to \($0).")
        }
    } else {
        return {
            print("I'm driving to \($0).")
        }
    }
}
let travelMethod = createTravelMethod(distance: 15)     //呼叫函式(函式參數1是字串)，函式回傳閉包，賦值給變數travelMethod
travelMethod("London")                                  //呼叫閉包(閉包參數1是字串)
                                                        //I'm cycling to London.

//4️⃣❌ 呼叫函式 要回傳閉包
//func makeCodeGenerator(language: String) -> () -> Void {
//    if language == "Swift" {
//        return "Swift rocks!"
//    } else {
//        return "Other languages are pretty great too!"
//    }
//}
func makeCodeGenerator(language: String) -> () -> Void {
    if language == "Swift" {
        return {
            print("Swift rocks!")
        }
    } else {
        return {
            print("Other languages are pretty great too!")
        }
    }
}
let generator = makeCodeGenerator(language: "Swift")
generator()
                                                                    //Swift rocks!

//舉例這就是最簡單的閉包
let a = {
    print("這是aaa")
}

//5️⃣ ❌ 閉包有參數
//func paintingMaker(medium: String) -> (String) -> Void {
//    if medium == "watercolor" {
//        return {
//            print("I'm going to paint some flowers.")
//        }
//    } else {
//        return {
//            print("I'm going to paint a landscape.")
//        }
//    }
//}
func paintingMaker(medium: String) -> (String) -> Void {
    if medium == "watercolor" {
        return { (a1:String) -> Void in
            print("I'm going to paint some flowers. + \(a1)")
        }
    } else {
        return { (a1:String) -> Void in
            print("I'm going to paint a landscape. + \(a1)")
        }
    }
}
let maker = paintingMaker(medium: "watercolor")
maker("隨意字串")                                   //I'm going to paint some flowers. + 隨意字串

//6️⃣ 閉包要有回傳值
//func catchPokemon(level: Int) -> ()  {
//    if level < 10 {
//        return {
//            return "Use a regular ball"
//        }
//    } else if level < 20 {
//        return {
//            return "Use a great ball"
//        }
//    } else {
//        return {
//            return "Use an ultra ball"
//        }
//    }
//}
func catchPokemon(level: Int) -> () -> String  {
    if level < 10 {
        return {
            return "Use a regular ball"
        }
    } else if level < 20 {
        return {
            return "Use a great ball"
        }
    } else {
        return {
            return "Use an ultra ball"
        }
    }
}
let catcher = catchPokemon(level: 11)
print(catcher())                            //Use a great ball


//7️⃣ ❌函式參數1要有參數名
//func makeSharer(String) -> () -> String {
//    switch destination {
//    case "Twitter":
//        return {
//            return "I'm writing a tweet"
//        }
//    default:
//        return {
//            return "I'm sending an email"
//        }
//    }
//}
func makeSharer(destination:String) -> () -> String {
    switch destination {
    case "Twitter":
        return {
            return "I'm writing a tweet"
        }
    default:
        return {
            return "I'm sending an email"
        }
    }
}
let sharer = makeSharer(destination: "Twitter")
print(sharer())                                         //I'm writing a tweet

//8️⃣
func createAgeCheck(strict: Bool) -> (Int) -> Bool {
    if strict {
        return {
            if $0 <= 21 {
                return true
            } else {
                return false
            }
        }
    } else {
        return {
            if $0 <= 18 {
                return true
            } else {
                return false
            }
        }
    }
}
let ageCheck = createAgeCheck(strict: true)
let result = ageCheck(20)
print(result)                                   //true

//9️⃣
func makeGreeting(language: String) -> (String) -> Void {
    if language == "French" {
        return {
            print("Bonjour, \($0)!")
        }
    } else {
        return {
            print("Hello, \($0)!")
        }
    }
}
let greeting = makeGreeting(language: "English")
greeting("Paul")                                        //Hello, Paul!

//1️⃣0️⃣
//func makeGame() -> Int -> Void {
//    return {
//        if $0 <= 5 {
//            print("Let's play five-a-side football.")
//        } else {
//            print("Let's play regular football.")
//        }
//    }
//}
func makeGame() -> (Int) -> Void {
    return {
        if $0 <= 5 {
            print("Let's play five-a-side football.")
        } else {
            print("Let's play regular football.")
        }
    }
}
let game = makeGame()
game(5)                         //Let's play five-a-side football.


//1️⃣1️⃣❌ 閉包要回傳字串
//func mealProducer() -> (Int) -> String {
//    return {
//        print("I'll make dinner for \($0) people.")
//    }
//}
func mealProducer() -> (Int) -> String {
    return {
        return ("I'll make dinner for \($0) people.")
    }
}
let makeDinner = mealProducer()
print(makeDinner(5))                //I'll make dinner for 5 people.

//1️⃣2️⃣
func createDoubler() -> (Int) -> Int {
    return {
        return $0 * 2
    }
}
let doubler = createDoubler()
print(doubler(2))                   //4



//: [Next](@next)
