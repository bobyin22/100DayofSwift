//: [Previous](@previous)

import Foundation

//1️⃣
//✅A
let legoBricksSold: Int? = 400_000_000_000
let numberSold = legoBricksSold!

//❌B 函式回傳是nil，要用if let 來接
func goals(for player: String) -> Int? {
    print("Sorry, the system is down right now.")
    return nil
}
//let harryGoals = goals(for: "Harry Kane")!

if let harryGoals = goals(for: "Harry Kane") {     //Sorry, the system is down right now.
    print("\(harryGoals) 解包成功")
} else {
    print("\(goals(for: "Harry Kane")) 解包失敗")   //Sorry, the system is down right now.
}                                                 //nil 解包失敗

//2️⃣
//A ✅
func describe(array: [String]?) {
    let unwrapped = array!
    print("The array has \(unwrapped.count) items.")
}
describe(array: []) //The array has 0 items.

//B ❌ 因為password是nil，要用if let 來接
let password: String? = nil
//let unwrappedPassword = password!
if let unwrappedPassword = password {
    print("\(unwrappedPassword) 解包成功")
} else {
    print("\(password) 解包失敗")  //nil 解包失敗
}

//3️⃣
//A ❌ population(of: "Tokyo") 出來是nil，強制解包會crash
func population(of city: String) -> Int? {
    if city == "Paris" {
        return 2_200_000
    }
    return nil
}
//let pop = population(of: "Tokyo")!
if let pop = population(of: "Tokyo") {
    print("\(pop) 成功解包")
} else {
    print("\(population(of: "Tokyo"))解包失敗")  //nil解包失敗
}

//B ✅
let age: Int = 21
let allowedMessage: String? = age >= 21 ? "Welcome!" : nil  // 如果>=21 成立Welcome 不成立nil
let result = allowedMessage!    //因為21一定等於21，所以可以強制解包

//4️⃣
//A ✅
func league(for skillLevel: Int) -> Int? {
    switch skillLevel {
    case 1:
        fallthrough
    case 2:
        return 3
    case 3:
        return 2
    case 4:
        return 1
    default:
        return nil
    }
}
let allocatedLeague = league(for: 3)!


//B ❌ 有nil不能強制解包
class Player {
    var name: String = "Anonymous"
    var salary: Int?
}
let player = Player()
//let salary = player.salary!
if let salary = player.salary {
    print("\(salary)解包成功")
} else {
    print("\(player.salary)解包失敗")       //nil解包失敗
}

//5️⃣
//A ✅
struct User {
    var name: String?
    var age: Int?
}
let taylor = User(name: "Taylor", age: 26)
let taylorAge = taylor.age!

//B ❌ 有nil不能強制解包
struct Starship {
    var name: String? = "Unknown"
    var maxWarpSpeed: Double?
}
let voyager = Starship()
//let maxWarp = voyager.maxWarpSpeed!
if let maxWarp = voyager.maxWarpSpeed {
    print("\(maxWarp) 解包成功")
} else {
    print("\(voyager.maxWarpSpeed) 解包失敗")   //nil 解包失敗
}

//6️⃣
//A
func title(for page: Int) -> String? {
    guard page >= 1 else {
        return nil
    }
    let pageCount = 132
    if page < pageCount {
        return "Page \(page)"
    } else {
        return nil
    }
}
let pageTitle = title(for: 16)! //Page 16

//B
let score = "babylon5"
//let scoreInt = Int(score)!
if let scoreInt = Int(score) {
    print("\(scoreInt) 轉型成功")
} else {
    print("\(Int(score)) 轉型失敗")  //nil轉型失敗
}


//: [Next](@next)
