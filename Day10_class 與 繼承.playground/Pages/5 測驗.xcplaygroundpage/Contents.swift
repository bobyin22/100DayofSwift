//: [Previous](@previous)

import Foundation

//1️⃣ ❌ struct是複製，改了之後與之前的不一樣
struct GalacticaCrew {
    var isCylon = false
}
var starbuck = GalacticaCrew()  //starbuck.isCylon = false
var tyrol = starbuck            //tyrol.isCylon = false
tyrol.isCylon = true
print(starbuck.isCylon)         //false
print(tyrol.isCylon)            //true

//2️⃣ ❌ 彼此沒有賦值，所以存的是不同記憶體位置
class Statue {
    var sculptor = "Unknown"
}
var venusDeMilo = Statue()
venusDeMilo.sculptor = "Alexandros of Antioch"
var david = Statue()
david.sculptor = "Michaelangelo"
print(venusDeMilo.sculptor)     //Alexandros of Antioch
print(david.sculptor)           //Michaelangelo

//3️⃣
class Starship {
    var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)      //9.6
print(enterprise.maxWarp)   //9.6

//4️⃣
struct Calculator {
    var currentTotal = 0
}
var baseModel = Calculator()
var casio = baseModel           //複製
var texas = baseModel           //複製
casio.currentTotal = 556
texas.currentTotal = 384
print(casio.currentTotal)       //556
print(texas.currentTotal)       //384

//5️⃣
class Author {
    var name = "Anonymous"
}
var dickens = Author()
dickens.name = "Charles Dickens"
var austen = dickens
austen.name = "Jane Austen"
print(dickens.name)     //Jane Austen
print(austen.name)      //Jane Austen

//6️⃣
class Hater {
    var isHating = true
}
var hater1 = Hater()
var hater2 = hater1
hater1.isHating = false
print(hater1.isHating)      //false
print(hater2.isHating)      //false

//7️⃣
class Hospital {
    var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")   //londonCentral.onCallStaff = ["Dr Harlan"]
londonWest.onCallStaff.append("Dr Haskins")     //londonWest.onCallStaff = ["Dr Harlan", "Dr Haskins"]
print(londonCentral.onCallStaff.count)          //2
print(londonWest.onCallStaff.count)             //2

//8️⃣ ❌ 兩個實例沒有賦值關係，所以記憶體是不同位置
class Ewok {
    var fluffinessPercentage = 100
}
var chirpa = Ewok()
var wicket = Ewok()
chirpa.fluffinessPercentage = 90
print(wicket.fluffinessPercentage)  //100
print(chirpa.fluffinessPercentage)  //90

//9️⃣
class Queen {
    var isMotherOfDragons = false
}
var elizabeth = Queen()
var daenerys = Queen()
daenerys.isMotherOfDragons = true
print(elizabeth.isMotherOfDragons)     //false
print(daenerys.isMotherOfDragons)      //true

//1️⃣0️⃣
class BasketballPlayer {
    var height = 200.0
}
var lebron = BasketballPlayer()
lebron.height = 203.0
var curry = BasketballPlayer()
curry.height = 190
print(lebron.height)    //203.0
print(curry.height)     //190.0

//1️⃣1️⃣
class Magazine {
    var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)  //128
print(vogue.pageCount)  //128

//1️⃣2️⃣
class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")  //tim.clients = ["Jess"]
var dave = tim
dave.clients.append("Sam")  //dave.clients = ["Jess", "Sam"]
print(tim.clients.count)    //2
print(dave.clients.count)   //2

//: [Next](@next)
