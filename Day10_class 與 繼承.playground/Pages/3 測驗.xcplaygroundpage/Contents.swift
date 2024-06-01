//: [Previous](@previous)

import Foundation

//1️⃣
class Appliance {
    func start() {
        print("Starting...")
    }
}
class Oven: Appliance {
}
let oven = Oven()
oven.start()        //Starting...


//2️⃣
class Band {
    func singSong() {
        print("Here's a new song.")
    }
}
class MetalBand: Band {
    override func singSong() {
        print("Ruuuuh ruh ruh ruuuuuh!")
    }
}
let lordi = MetalBand()
lordi.singSong()        //Ruuuuh ruh ruh ruuuuuh!

//3️⃣
class Watch {
    func tellTime() {
        print("It's 9:41")
    }
}
class SmartWatch: Watch {
    override func tellTime() {
        print("It's 9:41")
    }
}
let appleWatch = SmartWatch()
appleWatch.tellTime()       //It's 9:41
    
//4️⃣ ❌ 父類 不需要 override
//class Building {
//    override func build() {
//        print("This will take a couple of months.")
//    }
//}
class Building {
    func build() {
        print("This will take a couple of months.")
    }
}
class Skyscraper: Building {
    override func build() {
        print("This will take a year.")
    }
}
let shanghaiTower = Skyscraper()
shanghaiTower.build()       //This will take a year.

//5️⃣
class Composer {
    func composeMusic() {
        print("Here's some music I wrote.")
    }
}
class OperaComposer: Composer {
    override func composeMusic() {
        print("Here's an opera I wrote.")
    }
}
let verdi = OperaComposer()
verdi.composeMusic()        //Here's an opera I wrote.

//6️⃣ ❌ Airplane 類，不需繼承別人，他是父類
//class Airplane: Jet {
//    func takeOff() {
//        print("Fasten your seatbelts.")
//    }
//}
class Airplane {
    func takeOff() {
        print("Fasten your seatbelts.")
    }
}
class Jet: Airplane {
    override func takeOff() {
        print("Someone call Kenny Loggins, because we're going into the danger zone!")
    }
}
let f14 = Jet()
f14.takeOff()       //Someone call Kenny Loggins, because we're going into the danger zone!

//7️⃣ 父類 沒有方法，子類可以自行建立，不需 override
class Spaceship {
}
class StarDestroyer: Spaceship {
    func enterLightSpeed() {
        print("Let's go to ludicrous speed!")
    }
}
let executor = StarDestroyer()
executor.enterLightSpeed()  //Let's go to ludicrous speed!

//8️⃣ ❌ 子類 必須要繼承 父類
class Doctor {
    func operate() {
        print("I can't do that.")
    }
}
//class Surgeon {
//    override func operate() {
//        print("OK, let's go!")
//    }
//}
class Surgeon: Doctor {
    override func operate() {
        print("OK, let's go!")
    }
}
let doogieHowser = Doctor()
doogieHowser.operate()  //I can't do that.

//9️⃣ ❌ 子類 覆寫 要override
class Cinema {
    func showMovie() {
        print("Get your popcorn ready!")
    }
}
//class IMAXCinema: Cinema {
//    func showMovie() {
//        print("Get your eardrums ready!")
//    }
//}
class IMAXCinema: Cinema {
    override func showMovie() {
        print("Get your eardrums ready!")
    }
}
let londonIMAX = IMAXCinema()
londonIMAX.showMovie()      //Get your eardrums ready!

//1️⃣0️⃣
class Cat {
    func meow() {
        print("Meow!")
    }
}
let toby = Cat()
toby.meow()     //Meow!

//1️⃣1️⃣ ❌ 成功，但沒有印出東西
class Exercise {
    func describe() {
    }
}
class ChinUps: Exercise {
    override func describe() {
    }
}
let firstRep = ChinUps()
firstRep.describe()         //

//1️⃣2️⃣
class Store {
    func restock() -> String {
        return "Fill up the empty shelves"
    }
}
class GroceryStore: Store {
    override func restock() -> String {
        return "We need to buy more food."
    }
}
let tesco = GroceryStore()
tesco.restock()     // 回傳 "We need to buy more food."

//: [Next](@next)
