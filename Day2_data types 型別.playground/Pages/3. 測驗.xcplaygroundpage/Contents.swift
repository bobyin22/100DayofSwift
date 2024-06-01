//: [Previous](@previous)

import Foundation

//題目：Which of these statements about tuples are true?
//是否是tuple
//Hint: Tuples are fixed in size and the types can't be changed after they are created.



//1️⃣
//❌Option 1: Tuples must always be created as variables.
//There's no reason tuples can't be constant.
//
//✅Option 2: You can name tuple items.
//This is correct.

//2️⃣ ⭐️ Tuple值不能任意改型別
//✅Option 1: You can access tuple items using numerical positions.
//This is correct, although using names is usually easier.
//
//❌Option 2: All values in a tuple must be unique.
//Tuples may have duplicate values.
var myTuple = (name: "我的", type: "Tuple", value: "我的")
print(myTuple)
myTuple.name = "他的"
print(myTuple)
//myTuple.name = 123  //值已經是String，不能任意改Int
//print(myTuple)

//3️⃣
//✅Option 1: Tuples store values together in a single value.
//This is correct.
//
//❌Option 2: No one really understands tuples.
//Once you spend a little time with them, tuples aren't too hard to understand – honest!

//4️⃣
//❌Option 1: Tuples cannot hold multi-line strings.
//Tuples are perfectly capable of holding multi-line strings.
//
//✅Option 2: Tuples are created by placing items inside parentheses.
//This is correct.

//5️⃣
//✅Option 1: You can't change the types of tuple items.
//This is correct.
//
//❌Option 2: Tuples can only hold strings.
//Tuples can hold any kind of data you want.

//6️⃣ ⭐️Tuple的size是固定的，不能像Array刪除或減少
//✅Option 1: Tuples are fixed in size.
//This is correct.
//
//❌Option 2: Tuples are the same as arrays.
//Tuples cannot grow in size like arrays can.

//: [Next](@next)
