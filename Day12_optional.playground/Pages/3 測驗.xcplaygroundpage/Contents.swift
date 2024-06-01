//: [Previous](@previous)

import Foundation

//1️⃣
func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")    //5 doubled is 10
}

//2️⃣ ❌ 因為composer後面要繼續用，所以要用guard let

//func playOpera(by composer: String?) -> String? {
//    let composer = composer else {
//        return "Please specify a composer."
//    }
//    if composer == "Mozart" {
//        return "Le nozze di Figaro"
//    } else {
//        return nil
//    }
//}
func playOpera(by composer: String?) -> String? {
    guard let composer = composer else {
        return "Please specify a composer."
    }
    if composer == "Mozart" {
        return "Le nozze di Figaro"
    } else {
        return nil
    }
}
if let opera = playOpera(by: "Mozart") {
    print(opera)                            //Le nozze di Figaro
}

//3️⃣ ❌ guard let 後面要 else
//func playScale(name: String?) {
//    guard let name = name {
//        return
//    }
//    print("Playing the \(name) scale.")
//}
func playScale(name: String?) {
    guard let name = name else {
        return
    }
    print("Playing the \(name) scale.")
}
playScale(name: "C")        //Playing the C scale.

//4️⃣ ❌ 需要補寫 guard let age = age, age >= 18
//func verify(age: Int?) -> Bool {
//    guard age >= 18 {
//        return true
//    } else {
//        return false
//    }
//}

//⭐️ guard let 寫法
func verify(age: Int?) -> Bool {
    guard let age = age, age >= 18 else {
        return false
    }
    return false
}

//⭐️ if let 寫法
//func verify(age: Int?) -> Bool {
//    if let age = age, age >= 18 {
//        return true
//    } else {
//        return false
//    }
//}
if verify(age: 28) {
    print("You're old enough.")             //You're old enough.
} else {
    print("Come back in a few years.")
}


//5️⃣
func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello") {
    print(result)       //HELLO
}

//6️⃣
func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else { return false }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}
if isLongEnough("Mario Odyssey") {
    print("Let's play that!")       //Let's play that!
}

//7️⃣ ❌ optional biding 參數名number 屬性必須要是optional Int?
//func add3(to number: Int) -> Int {
//    guard let number = number else {
//        return 3
//    }
//    return number + 3
//}
func add3(to number: Int?) -> Int {
    guard let number = number else {
        return 3
    }
    return number + 3
}
let added = add3(to: 5)
print(added)            //8

//8️⃣
func validate(password: String?) -> Bool {
    guard let password = password else {
        return false
    }
    if password == "fr0sties" {
        print("Authenticated successfully!")
        return true
    }
    return false
}
validate(password: "fr0sties")      //Authenticated successfully!

//9️⃣
func test(number: Int?) {
    guard let number = number else { return }
    print("Number is \(number)")
}
test(number: 42)       //Number is 42

//1️⃣0️⃣ ❌ if let 必須是optional type，代表 func username 回傳值要是 String?
//func username(for id: Int?) -> String {
//    guard let id = id else {
//        return nil
//    }
//    if id == 1989 {
//        return "Taylor Swift"
//    } else {
//        return nil
//    }
//}
func username(for id: Int?) -> String? {
    guard let id = id else {
        return nil
    }
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
if let user = username(for: 1989) {
    print("Hello, \(user)!")
}

//1️⃣1️⃣
func describe(occupation: String?) {
    guard let occupation = occupation else {
        print("You don't have a job.")
        return
    }
    print("You are an \(occupation).")
}
let job = "engineer"
describe(occupation: job)   //You are an engineer

//1️⃣2️⃣ ❌ guard 後面要加let
//func plantTree(_ type: String?) {
//    guard type else {
//        return
//    }
//    print("Planting a \(type).")
//}
func plantTree(_ type: String?) {
    guard let type else {
        return
    }
    print("Planting a \(type).")
}
plantTree("willow") //Planting a willow

//: [Next](@next)
