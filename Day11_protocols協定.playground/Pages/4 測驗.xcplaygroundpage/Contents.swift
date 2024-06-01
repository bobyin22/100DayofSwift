//: [Previous](@previous)

import Foundation

//1️⃣ ❌ protocol不能寫函式的方法細節，protocol只宣告不做事
//protocol DogTrainer {
//    func train(dog: String) {
//        print("We'll make \(dog) behave in no time!")
//    }
//}
protocol DogTrainer {
    func train(dog: String)
}

struct D: DogTrainer {
    func train(dog: String) {
        print("看看\(dog)是什麼")
    }
}
let d1 = D()
d1.train(dog: "黃狗")     //看看黃狗是什麼

//2️⃣ ❌ extension protocol，要把協議名字是Chef而不是Chief
protocol Chef {
    func getRecipes() -> [String]
}
//extension Chief {
//    func getRecipes() -> [String] {
//        return ["Macaroni Cheese"]
//    }
//}
extension Chef {
    func getRecipes() -> [String] {
        return ["Macaroni Cheese"]
    }
}

//3️⃣ ❌協議內的參數，不需要get set，只有協議內的屬性要
//protocol SmartPhone {
//    func makeCall(to name { get set })
//}
protocol SmartPhone {
    func makeCall(to name: String)      //協議內的參數，不需要get set，只有協議內的屬性要
}
extension SmartPhone {
    func makeCall(to name: String) {
        print("Dialling \(name)...")
    }
}

//4️⃣
protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}
extension Politician {
    func takeBribe() {
        if isDirty {
            print("Thank you very much!")
        } else {
            print("Someone call the police!")
        }
    }
}

//5️⃣
protocol Anime {
    var availableLanguages: [String] { get set }
    func watch(in language: String)
}
extension Anime {
    func watch(in language: String) {
        if availableLanguages.contains(language) {
            print("Now playing in \(language)")
        } else {
            print("Unrecognized language.")
        }
    }
}

//6️⃣ ❌ 當extension Protocol，裡面要完善他的函式
protocol Club {
    func organizeMeeting(day: String)
}
//extension Club {
//    override func organizeMeeting(day: String) {
//        print("We're going to meet on \(day).")
//    }
//}
extension Club {
    func organizeMeeting(day: String) {
        print("We're going to meet on \(day).")
    }
}

//7️⃣ ❌ 方法名，都要一樣是writeScript
protocol SuperHeroMovie {
    func writeScript() -> String
}
//extension SuperHeroMovie {
//    func makeScript() -> String {
//        return """
//        Lots of special effects,
//        some half-baked jokes,
//        and a hint of another
//        sequel at the end.
//        """
//    }
//}
extension SuperHeroMovie {
    func writeScript() -> String {
        return """
        Lots of special effects,
        some half-baked jokes,
        and a hint of another
        sequel at the end.
        """
    }
}

//8️⃣
protocol Mammal {
    func eat()
}
extension Mammal {
    func eat() {
        print("Time for dinner!")
    }
}

//9️⃣ ❌ 函式名後面要括弧
//protocol Bartender {
//    func makeDrink
//}
protocol Bartender {
    func makeDrink()
}
extension Bartender {
    func makeDrink(name: String) {
        print("One \(name) coming right up.")
    }
}

//1️⃣0️⃣
protocol Hamster {
    var name: String { get set }
    func runInWheel(minutes: Int)
}
extension Hamster {
    func runInWheel(minutes: Int) {
        print("\(name) is going for a run.")
        for _ in 0..<minutes {
            print("Whirr whirr whirr")
        }
    }
}

//1️⃣1️⃣
protocol Starship {
    func transport(number: Int)
}
extension Starship {
    func transport(number: Int) {
        print("\(number) to beam up - energize!")
    }
}

//1️⃣2️⃣
protocol Fencer {
    func fenceFoil()
}
extension Fencer {
    func fenceFoil() {
        print("En garde!")
    }
}

//: [Next](@next)
