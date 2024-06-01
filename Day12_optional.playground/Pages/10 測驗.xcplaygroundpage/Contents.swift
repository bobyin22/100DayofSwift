//: [Previous](@previous)

import Foundation

//1️⃣
class Museum {
    var name = "National Museum"
}
class HistoryMuseum: Museum { }
class ToyMuseum: Museum { }
let museum = ToyMuseum()
if let unwrappedMuseum = museum as? HistoryMuseum {
    print("This is the \(unwrappedMuseum.name).")
} else {
    print("museum轉型失敗")             //museum轉型失敗
}

//2️⃣
class Person {
    var name = "Taylor Swift"
}
class User: Person { }
let taylor = User()
if let user = taylor as? User {
    print("\(user.name) is a user.")    //Taylor Swift is a user.
}

//3️⃣
let flavor = "apple and mango"
if let taste = flavor as? String {
    print("We added \(taste).")     //We added apple and mango
}

//4️⃣ ❌ Smartphone 要繼承 Phone，才能轉型Phone
//iPhone is an instance of SmartPhone, not an instance of Phone, so the typecast will fail.
class Phone {
    var model = "Unknown"
}
//class Smartphone { }
class Smartphone: Phone { }
let iPhone = Smartphone()
if let phone = iPhone as? Phone {
    print("The model is: \(phone.model).")     //The model is: Unknown
}

//5️⃣ ❌ ["23"] 才能轉型 [String]
//      [String]? 才需要用 if let
//let distances = [23, 28, 22]
let distances: [String]? = ["23", "28", "22"]
if let stringDistances = distances as? [String] {
    for distance in stringDistances {
        print("The distance was \(distance).")      //The distance was 23.
    }                                               //The distance was 28.
}                                                   //The distance was 22.

//6️⃣
class Transport { }
class Train: Transport {
    var type = "public"
}
class Car: Transport {
    var type = "private"
}
let travelPlans = [Train(), Car(), Train()]
for plan in travelPlans {
    if let train = plan as? Train {
        print("We're taking \(train.type) transport.")  //We're taking public transport.
    }                                                   //We're taking public transport.
}

//7️⃣ ❌ String轉型Int 會失敗，所以不會print東西
var socialMediaSite = "Twitter"
if let site = socialMediaSite as? Int {
    print("The site is \(site)")
}

//8️⃣
class CitrusFruit {
    var averagePH = 3.0
}
class Orange: CitrusFruit { }
let citrus = Orange()
if let orange = citrus as? Orange {
    print("This orange has a pH of \(orange.averagePH).")   //This orange has a pH of 3.0
}

//9️⃣ ❌ struct 沒有繼承
class Glasses {
    var isShortSighted = true
}
//struct Sunglasses: Glasses { }
class Sunglasses: Glasses { }
let shades = Sunglasses()
if let glasses = shades as? Glasses {
    if glasses.isShortSighted {
        print("These sunglasses are for 近視 people.")  //These sunglasses are for 近視 people.
    } else {
        print("These sunglasses are for 遠視 people.")
    }
}

//1️⃣0️⃣
class Bird {
    var wingspan: Double? = nil
}
class Eagle: Bird { }
let eagle = Eagle()
print(eagle.wingspan)   //nil

if let myEagle = eagle as? Eagle {
    print(eagle.wingspan)
    if let wingspan = myEagle.wingspan {
        print("The wingspan is \(wingspan).")
    } else {    //因為myEagle.wingspan是nil 所以會走到這
        print("This bird has an unknown wingspan.")     //This bird has an unknown wingspan.
    }
}

//1️⃣1️⃣
class Reading {
    var value = 0.0
}
class TemperatureReading: Reading { }
let temperature = TemperatureReading()
if let reading = temperature as? Reading {
    print("The reading is \(reading.value).")   //The reading is 0.0
}

//1️⃣2️⃣ ❌ if let sport = swimming
//讓 swimming 去轉型才對
class Sport { }
class Swimming: Sport {
    var distance = 100
}
//let swimming = Sport()
let swimming = Swimming()
if let sport = swimming as? Swimming {
    print("The distance is \(sport.distance).") //The distance is 100.
}

//: [Next](@next)
