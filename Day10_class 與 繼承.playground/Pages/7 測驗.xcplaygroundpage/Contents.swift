//: [Previous](@previous)

import Foundation

//1️⃣ 屬性toppings是私有的，實例拿不到他，所以用getToppings函式去顯示私有toppings的資料
class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
    func getToppings() -> [String] {
        return toppings
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")
print(pizza.getToppings())               //["Mushrooms"]

//2️⃣ ❌ class內屬性是let，實例無法改動 ⭐️Constant classes can't have constant properties changed
//class School {
//    let students = 200
//    func expel(student: String, for reason: String) {
//        print("\(student) has been expelled for \(reason).")
//        students -= 1
//    }
//}
class School {
    var students = 200
    func expel(student: String, for reason: String) {
        print("\(student) has been expelled for \(reason).")
        students -= 1
    }
}
let school = School()
school.expel(student: "Jason", for: "coding during class")  //Jason has been expelled for coding during class.

//3️⃣ ❌ struct 沒有mutate fucn 改不到屬性值，然而class會直接改
//class SewingMachine {
//    var itemsMade = 0
//    mutating func makeBag(count: Int) {
//        itemsMade += count
//    }
//}
struct SewingMachine {
    var itemsMade = 0
    mutating func makeBag(count: Int) {
        itemsMade += count
    }
}
var machine = SewingMachine()
machine.makeBag(count: 1)
machine.makeBag(count: 1)
print(machine.itemsMade)    //2

struct Counter {
    var count = 0
    func increment() -> Int {
        return count + 1
    }
}
var counter = Counter()
counter.increment()     //1
counter.increment()     //1
print(counter.count)    //0


class Score {
    var myNum = 0
    func add() -> Int {
        myNum += 1
        return myNum
    }
}
let score = Score()
score.add()                  //1
score.add()                  //2
print("印出", score.myNum)    //印出2

//4️⃣ ❌ struct要mutate才能改屬性，struct實例要var才能改動
//struct Park {
//    var numberOfFlowers = 1000
//    func plantFlowers() {
//        numberOfFlowers += 50
//    }
//}
struct Park {
    var numberOfFlowers = 1000
    mutating func plantFlowers() {
        numberOfFlowers += 50
    }
}
//let park = Park()
var park = Park()
park.plantFlowers()
print(park.numberOfFlowers)     //1050

//5️⃣ ❌ struct要mutate才能改屬性
//struct Piano {
//    var untunedKeys = 3
//    func tune() {
//        if untunedKeys > 0 {
//            untunedKeys -= 1
//        }
//    }
//}
struct Piano {
    var untunedKeys = 3
    mutating func tune() {
        if untunedKeys > 0 {
            untunedKeys -= 1
        }
    }
}
var piano = Piano()
piano.tune()
print(piano.untunedKeys)    //2

//6️⃣ ❌ struct才有mutating
//class Beach {
//    var lifeguards = 10
//    mutating func addLifeguards(count: Int) {
//        lifeguards += count
//    }
//}
struct Beach {
    var lifeguards = 10
    mutating func addLifeguards(count: Int) {
        lifeguards += count
    }
}
var beach = Beach()
beach.addLifeguards(count: 2)
print(beach.lifeguards) //12

//7️⃣ struct實例要var才改得動
struct Kindergarten {
    var numberOfScreamingKids = 30
    mutating func handOutIceCream() {
        numberOfScreamingKids = 0
    }
}
//let kindergarten = Kindergarten()
var kindergarten = Kindergarten()
kindergarten.handOutIceCream()

//8️⃣
class Light {
    var onState = false
    func toggle() {
        if onState {
            onState = false
        } else {
            onState = true
        }
        print("Click")
    }
}
let light = Light()
light.toggle()      //Click

//9️⃣
struct Code {
    var numberOfBugs = 100
    mutating func fixBug() {
        numberOfBugs += 3
    }
}
var code = Code()
code.fixBug()
print(code.numberOfBugs)    //103

//1️⃣0️⃣
class Phasers {
    var energyLevel = 100
    func firePhasers() {
        if energyLevel > 10 {
            print("Firing!")
            energyLevel -= 10
        }
    }
}
var phasers = Phasers()
phasers.firePhasers()       //Firing!
print(phasers.energyLevel)  //90

//1️⃣1️⃣
class Sun {
    var isNova = false
    func goNova() {
        isNova = true
    }
}
let sun = Sun()
sun.goNova()
print(sun.isNova)   //true

//1️⃣2️⃣
struct Barbecue {
    var charcoalBricks = 20
    mutating func addBricks(_ number: Int) {
        charcoalBricks += number
    }
}
var barbecue = Barbecue()
barbecue.addBricks(4)
print(barbecue.charcoalBricks)  //24

//: [Next](@next)
