//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Make sure the returned closure accepts the right parameters and returns the right data type, if any.

//1️⃣ 呼叫函式賦值給變數，變數是個閉包，閉包有參數1是"twostraws"
//   用函式回傳值去做判斷
func createValidator() -> (String) -> Bool {
    return {
        if $0 == "twostraws" {
            return true             //走到這
        } else {
            return false
        }
    }
}
let validator = createValidator()   //變數validator是個閉包
print(validator("twostraws"))       //閉包有

//true

//2️⃣
//makeRecorder函式回傳一個閉包 () -> String
//makeRecorder函式用參數1 media去做switch判斷，最後回傳的閉包長成這樣 { return "xxx" }
// { return "xxx" } 這是一個閉包

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
let recorder = makeRecorder(media: "podcast")
print(recorder())   //印出閉包
//I'm recording a podcast

print(recorder)
//(Function)

//3️⃣
//函式參數1 distance: Int
//函式回傳閉包 (String) -> Void
func createTravelMethod(distance: Int) -> (String) -> Void {
    if distance < 5 {
        return {
            print("I'm walking to \($0).")
        }
    } else if distance < 20 {
        return {
            print("I'm cycling to \($0).")  //閉包的參數1帶入
        }
    } else {
        return {
            print("I'm driving to \($0).")
        }
    }
}
let travelMethod = createTravelMethod(distance: 15)
travelMethod("London")

//I'm cycling to London

//4️⃣ ❌ 回傳是閉包喔 return "" 這樣是回傳字串
//      回傳是閉包喔 return {""} 這樣是回傳字串
//      最簡單的閉包就是一段 大括弧內的東西
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
            "Swift rocks!"
        }
    } else {
        return {
            "Other languages are pretty great too!"
        }
    }
}
let generator = makeCodeGenerator(language: "Swift")
generator()         //()->()
print(generator())  //() 因為回傳是Void所以印出來也沒東西

//5️⃣ ❌ 閉包 因為有參數是字串，所以return也要寫上參數啊
//函式 回傳閉包，閉包參數1字串，閉包回傳空
//函式 參數1是字串

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
        return { (a1: String) in
            print("I'm going to paint some flowers. \(a1)")
        }
    } else {
        return { (a1: String) in
            print("I'm going to paint a landscape.  \(a1)")
        }
    }
}
let maker = paintingMaker(medium: "watercolor")
maker("哈哈我騙你的") //I'm going to paint some flowers. 哈哈我騙你的

//6️⃣ ❌ 回傳是一個閉包，沒參數沒回傳值，所以閉包覆值給變數，變數印出來後沒有東西
//func catchPokemon(level: Int) -> () {
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
func catchPokemon(level: Int) -> () -> Void {
    if level < 10 {
        return {
            "Use a regular ball"
        }
    } else if level < 20 {
        return {
            "Use a great ball"
        }
    } else {
        return {
            "Use an ultra ball"
        }
    }
}
let catcher = catchPokemon(level: 11)
print(catcher())        //()


//7️⃣ ❌ 函式參數1要有parameter name
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
func makeSharer(destination: String) -> () -> String {
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
print(sharer()) //I'm writing a tweet"

//8️⃣
func createAgeCheck(strict: Bool) -> (Int) -> Bool {
    if strict {
        return {            //閉包開始
            if $0 <= 21 {
                return true //走到這
            } else {
                return false
            }
        }                   //閉包結束
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
let result = ageCheck(20)   //閉包回傳Bool有被變數接住
print(result)               //印出變數的布林值
//true

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
greeting("Paul")        //Hello, Paul!

//1️⃣0️⃣ 函式回傳值是個閉包 要寫成 -> (Int) -> Void
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
game(5) //Let's play five-a-side football.

//1️⃣1️⃣ ❌ 函式回傳閉包，閉包回傳字串
//func mealProducer() -> (Int) -> String {
//    return {
//        print("I'll make dinner for \($0) people.")
//    }
//}
func mealProducer() -> (Int) -> String {
    return {
        print("I'll make dinner for \($0) people.")
        return "字串"
    }
}
let makeDinner = mealProducer()
print(makeDinner(5))

//I'll make dinner for 5 people.
//字串

//1️⃣2️⃣
func createDoubler() -> (Int) -> Int {
    return {
        return $0 * 2
    }
}
let doubler = createDoubler()
print(doubler(2))   //4

//: [Next](@next)
