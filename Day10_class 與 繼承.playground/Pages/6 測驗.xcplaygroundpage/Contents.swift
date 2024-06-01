//: [Previous](@previous)

import Foundation

//1️⃣ ❌ deinit 不需要func，class才能deinit
//struct Olympics {
//    func deinit() {
//        print("And now for the closing ceremony.")
//    }
//}
class Olympics {
    init() {
        print("And now for the start ceremony.")
    }
    deinit {
        print("And now for the closing ceremony.")
    }
}
var olympics: Olympics? = Olympics()
olympics = nil                 //And now for the start ceremony.
                               //And now for the closing ceremony.

//2️⃣ ❌ deinit 不需要括弧
//class MarketingFlyer {
//    deinit() {
//        print("You're going straight into recycling.")
//    }
//}
class MarketingFlyer {
    deinit {
        print("You're going straight into recycling.")
    }
}
var marketingFlyer: MarketingFlyer? = MarketingFlyer()
marketingFlyer = nil            //You're going straight into recycling.

//3️⃣
class Job {
    deinit {
        print("I quit!")
    }
}
var job: Job? = Job()
job = nil                       //I quit!

//4️⃣
class IceCream {
    deinit {
        print("No more icecream :(")
    }
}
var iceCream: IceCream? = IceCream()
iceCream = nil      //No more icecream :(

//5️⃣ ❌ class才能deinit
//struct Fairytale {
//    deinit {
//        print("And they lived happily ever after.")
//    }
//}
class Fairytale {
    deinit {
        print("And they lived happily ever after.")
    }
}
var fairytale: Fairytale? = Fairytale()
fairytale = nil         //And they lived happily ever after.

//6️⃣ ❌ class deinit 不需要func
//class PhoneCall {
//    func deinit {
//        print("Bye!")
//    }
//}
class PhoneCall {
    deinit {
        print("Bye!")
    }
}
var phoneCall: PhoneCall? = PhoneCall()
phoneCall = nil         //Bye!

//7️⃣
class Lightsaber {
    deinit {
        print("Fssshhp!")
    }
}
var lightsaber : Lightsaber? = Lightsaber()
lightsaber = nil    //Fssshhp!

//8️⃣ ❌ init實例結束不會印東西，是deinit結束才會印東西
//class Election {
//    init() {
//        print("And the winner is...")
//    }
//}
class Election {
    deinit {
        print("And the winner is.... close")
    }
}
var election : Election? = Election()
election = nil      //And the winner is.... close

//9️⃣
class DisneyMovie {
    deinit {
        print("Relax, there'll be another in a year.")
    }
}
var disneyMovie: DisneyMovie? = DisneyMovie()
disneyMovie = nil       //Relax, there'll be another in a year.

//1️⃣0️⃣
class MagicSpell {
    deinit {
        print("Good job, Hermione!")
    }
}
var magicSpell : MagicSpell? = MagicSpell()
magicSpell = nil    //Good job, Hermione!

//1️⃣1️⃣ ❌ dealloc 是Objective-c的東西
//class Meal {
//    dealloc {
//        print("Please send over the bill.")
//    }
//}
class Meal {
    deinit {
        print("Please send over the bill.")
    }
}
var meal : Meal? = Meal()
meal = nil      //Please send over the bill.

//1️⃣2️⃣
class Firefly {
    deinit {
        print("I'm still annoyed that this was cancelled.")
    }
}
var fireFly: Firefly? = Firefly()
fireFly = nil   //I'm still annoyed that this was cancelled.

//: [Next](@next)
