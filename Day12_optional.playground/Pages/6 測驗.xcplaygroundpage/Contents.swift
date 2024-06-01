//: [Previous](@previous)

import Foundation

//1️⃣ ❌ nil coalescing 當型別是 Sting? 才用 ??
//let painter: String = "Leonardo da Vinci"
let painter: String? = "Leonardo da Vinci"
var artist: String = painter ?? "Unknown"       //Leonardo da Vinci

//2️⃣
var bestPony: String? = "Pinkie Pie"
//let selectedPony: String? == bestPony ?? nil
let selectedPony: String? = bestPony ?? nil     //Pinkie Pie

//3️⃣
let lightsaberColor: String? = "green"
let color = lightsaberColor ?? "blue"           //green

//4️⃣
var captain: String? = "Kathryn Janeway"
let name = captain ?? "Anonymous"               //Kathryn Janeway

//5️⃣ ❌ ?? 後要面 值
let numberSum: Double? = 0.0
//let sum: Double = numberSum ??
let sum: Double = numberSum ?? 1.0              //0.0

//6️⃣ ❌ ?? 後面型別也要是String
var conferenceName: String? = "WWDC"
//var conference: String = conferenceName ?? nil
var conference: String = conferenceName ?? "nil"

//7️⃣
let planetNumber: Int? = 426
var destination = planetNumber ?? 3     //426

//8️⃣ ❌ ?? 後面型別要是Int
let userID: Int? = 556
//let id = userID ?? "Unknown"
let id = userID ?? 999          //556

//9️⃣
let distanceRan: Double? = 0.5
let distance: Double = distanceRan ?? 0 //0.5

//1️⃣0️⃣
var userOptedIn: Bool? = nil
var optedIn = userOptedIn ?? false      //false

//1️⃣1️⃣
let jeansNumber: Int? = nil
//let jeans = jeansNumber ? 501
let jeans = jeansNumber ?? 501          //501

//1️⃣2️⃣
var selectedYear: Int? = nil
let actualYear = selectedYear ?? 1989   //1989

//: [Next](@next)
