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
                print("進入if 啟動didSet")
            } else {
                isMillionnaire = false
                print("進入else 啟動didSet")
            }
        }
    }
}
var a1 = BankAccount(name: "玉山銀行", balance: 100)
a1.balance = 900            //進入if 啟動didSet

var a2 = BankAccount(name: "台灣銀行", isMillionnaire: false, balance: 2_000_000) //balance 屬性是在 isMillionnaire 屬性之後初始化的

//要下一行改值才會走didSet
a2.balance = 2_000_000      //進入if 啟動didSet


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
var myApp = App(name: "Tinder", isOnSale: false)
myApp.isOnSale = true       //Go and download my app!



//3️⃣
struct Child {
    var name: String
    var age: Int {
        didSet {
            print("Happy birthday, \(name)，你已經\(age)歲!")
        }
    }
}
var myChild = Child(name: "周華", age: 29)
myChild.age = 30    //Happy birthday, 周華，你已經30歲!

//4️⃣ ❌ hasSet 改 didSet
//struct StepCounter {
//    var steps: Int {
//        hasSet {
//            print("You've walked \(steps) steps - good job!")
//        }
//    }
//}
struct StepCounter {
    var steps: Int {
        willSet {
            print("先 You've walked \(steps) steps - good job!")
        }
        
        didSet {
            print("後 You've walked \(steps) steps - good job!")
        }
    }
}
var myStepCounter = StepCounter(steps: 100)
myStepCounter.steps = 101   //先 You've walked 100 steps - good job!  (willSet觸發)
                            //後 You've walked 101 steps - good job!  (didSet觸發)


//5️⃣
struct Person {
    var clothes: String {
        didSet {
            print("I'm changing to \(clothes)")
        }
    }
}
var myPerson = Person(clothes: "毛衣")
myPerson.clothes = "夾克"     //I'm changing to 夾克


//6️⃣ ❌ dset 改 didSet
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
var myFuzzClock = FuzzyClock(hour: 10)
myFuzzClock.hour = 17   //It's the afternoon

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
var myFishTank = FishTank(capacity: 3, fishCount: 2)
myFishTank.fishCount = 4    //You have too many fish!

//8️⃣ ❌ age屬性要有型別
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
var myDog = Dog(age: 1)
myDog.age = 2   //I'm now 14 in dog years.

//9️⃣ ❌ property observers 要是var
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
var myFootballMatch = FootballMatch(homeTeamScore: 2, awayTeamScore: 3)
myFootballMatch.homeTeamScore = 5   //Yay - we scored!


//1️⃣0️⃣
struct Game {
    var score: Int {
        didSet {
            print("Your score is now \(score).")
        }
    }
}
var myGame = Game(score: 99)
myGame.score = 100      //Your score is now 100.
    

//1️⃣1️⃣ ❌ didSet 要大括號
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
var myHouse = House(numberOfOccupants: 10)
myHouse.numberOfOccupants = 11      //11 people live here now.

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
var myStudent = Student(name: "周舶", debt: 300)
myStudent.debt = 99_000 //Can I fake my own death?


//: [Next](@next)
