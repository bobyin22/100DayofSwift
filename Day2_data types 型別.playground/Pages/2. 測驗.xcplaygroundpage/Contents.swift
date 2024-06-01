//: [Previous](@previous)

import Foundation

//題目：This will create a set with two items – true or false?
// Set是否有建立兩個元素，對或錯

//1️⃣ ✅ ⭐️ Set 裡面元素值 不重複
var readings = Set([true, false, true, true])
print(readings) //[true, false]

//2️⃣ ✅
var attendees = Set([100, 100, 101, 100])
print(attendees)    //[100, 101]

//3️⃣ ❌ 沒有型別直接寫swift會誤以為是Array
//let users = ["Taylor", "Adele"]
let users = Set(["Taylor", "Adele"])            //建立Set寫法
let users2: Set<String> = ["Taylor", "Adele"]   //建立Set寫法

//4️⃣ ❌ 要改Set([元素1, 元素2])才對
//let earthquakeStrengths = Set(1, 1, 2, 2)
let earthquakeStrengths = Set([1, 1, 2, 2])

//5️⃣ ❌ 沒有型別直接寫swift會誤以為是Array
//let cats = ["Burmese", "Siamese", "Persian"]
let cats: Set<String> = ["Burmese", "Siamese", "Persian"]

//6️⃣ ✅
var names = Set(["Sean", "Paul"])

//7️⃣ ✅
var colors = Set(["Red", "Green", "Red"])

//8️⃣ ❌ 有不重複的有3個，不是2個
let staffReviews = Set([1, 2, 1, 2, 3])
print(staffReviews)     //[2, 1, 3]

//9️⃣ ✅
var ratings = Set([1, 1, 1, 2, 2, 2])
print(ratings)

//1️⃣0️⃣ ❌ 只建立一個元素
let playlistSizes = Set([1000])

//1️⃣1️⃣ ✅
var scores = Set([9, 10])

//1️⃣2️⃣ ❌ 建立了三個元素，而不是題目要的兩個元素
let averageHeights = Set([1.71, 1.72, 1.73])

//: [Next](@next)
