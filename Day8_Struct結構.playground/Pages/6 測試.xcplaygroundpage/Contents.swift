//: [Previous](@previous)

import Foundation

//1️⃣
// ❌
let definitelyTrue = "Fox in box"
definitelyTrue.contains("socks")        //false


//✅
let username = "twostraws"
username.uppercased() == "TWOSTRAWS"    //true

//2️⃣
//✅
var mac = "iMac"
mac.hasPrefix("i")                  //true

//❌ 是MARIO
var superHero = "Mario"
superHero.uppercased() == "Mario"   //false

//3️⃣
//✅
var str = ""
for i in 1...5 {
    str += "\(i)"   //"     "
}
str.count == 5

//❌ 是content 不是continent
let content = "Europe"
//continent.contains("Europe")
content.contains("Europe")  //true

//4️⃣
//✅
let joke = "What's red and smells like blue paint? Red paint."
joke.count > 10 //true

//❌ 是"Choo"
let shoes = "Jimmy Choo"
//shoes.contains(Choo)
shoes.contains("Choo")  //true

//5️⃣
//✅
let song = "Shake it Off"
song.uppercased().contains("SHAKE") //true


//❌ count是9
var favoriteIceCream = "choc chip"
favoriteIceCream.count > 10 //false

//6️⃣
//✅
let quote = "Time is an illusion. Lunchtime doubly so."
quote.contains("Lunch") //true

//❌ 是Tay
var singer = "Taylor Swift"
//singer.hasPrefix("TAY")
singer.hasPrefix("TAY")

//: [Next](@next)
