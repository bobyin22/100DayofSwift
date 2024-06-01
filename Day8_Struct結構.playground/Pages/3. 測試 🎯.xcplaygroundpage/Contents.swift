//: [Previous](@previous)

import Foundation

//1️⃣
struct BankAccount {
    var name: String
    var isMillionnaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionnaire = true
            } else {
                isMillionnaire = false
            }
        }
    }
}
var bankAccount = BankAccount(name: "玉山銀行", isMillionnaire: true, balance: 9_000_000)
print(bankAccount.name, bankAccount.isMillionnaire, bankAccount.balance)    //玉山銀行 false 9000000
bankAccount.balance = 0
print(bankAccount.name, bankAccount.isMillionnaire, bankAccount.balance)    //玉山銀行 false 0

//2️⃣
struct App {
    var name: String
    var isOnSale: Bool {
        didSet {
            if isOnSale {
                print("Go and download my app!")
            } else {
                print("Maybe download it later.")
            }
        }
    }
}

//3️⃣
struct Child {
    var name: String
    var age: Int {
        didSet {
            print("Happy birthday, \(name)!")
        }
    }
}
//4️⃣
//struct StepCounter {
//    var steps: Int {
//        hasSet {
//            print("You've walked \(steps) steps - good job!")
//        }
//    }
//}
struct StepCounter {
    var steps: Int {
        didSet {
            print("You've walked \(steps) steps - good job!")
        }
    }
}
//5️⃣
struct Person {
    var clothes: String {
        didSet {
            print("I'm changing to \(clothes)")
        }
    }
}
//6️⃣
//struct FuzzyClock {
//    var hour: Int {
//        dset {
//            if hour < 12 {
//                print("It's morning")
//            } else if hour < 18 {
//                print("It's the afternoon")
//            } else {
//                print("It's the evening.")
//            }
//        }
//    }
//}
struct FuzzyClock {
    var hour: Int {
        didSet {
            if hour < 12 {
                print("It's morning")
            } else if hour < 18 {
                print("It's the afternoon")
            } else {
                print("It's the evening.")
            }
        }
    }
}
//7️⃣
struct FishTank {
    var capacity: Int
    var fishCount: Int {
        didSet {
            if fishCount > capacity {
                print("You have too many fish!")
            }
        }
    }
}
var fishTank = FishTank(capacity: 10, fishCount: 10)
fishTank.fishCount = 11 //You have too many fish!

//8️⃣
//struct Dog {
//    var age {
//        didSet {
//            let dogAge = age * 7
//            print("I'm now \(dogAge) in dog years.")
//        }
//    }
//}
struct Dog {
    var age: Int {
        didSet {
            let dogAge = age * 7
            print("I'm now \(dogAge) in dog years.")
        }
    }
}

//9️⃣ ⭐️ property observers 必須是 var
//struct FootballMatch {
//    let homeTeamScore: Int {
//        didSet {
//            print("Yay - we scored!")
//        }
//    }
//    let awayTeamScore: Int {
//        didSet {
//            print("Boo - they scored!")
//        }
//    }
//}
struct FootballMatch {
    var homeTeamScore: Int {
        didSet {
            print("Yay - we scored!")
        }
    }
    var awayTeamScore: Int {
        didSet {
            print("Boo - they scored!")
        }
    }
}
//1️⃣0️⃣
struct Game {
    var score: Int {
        didSet {
            print("Your score is now \(score).")
        }
    }
}
//1️⃣1️⃣
//struct House {
//    var numberOfOccupants: Int {
//        didSet:
//            print("\(numberOfOccupants) people live here now.")
//    }
//}
struct House {
    var numberOfOccupants: Int {
        didSet {
            print("\(numberOfOccupants) people live here now.")
        }
    }
}
//1️⃣2️⃣
//enum Student {
//    var name: String
//    var debt: Int {
//        didSet {
//            if debt < 5_000 {
//                print("This is great!")
//            } else if debt < 20_000 {
//                print("This is OK.")
//            } else {
//                print("Can I fake my own death?")
//            }
//        }
//    }
//}
struct Student {
    var name: String
    var debt: Int {
        didSet {
            if debt < 5_000 {
                print("This is great!")
            } else if debt < 20_000 {
                print("This is OK.")
            } else {
                print("Can I fake my own death?")
            }
        }
    }
}

//: [Next](@next)
