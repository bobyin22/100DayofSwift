//: [Previous](@previous)

import Foundation

//1️⃣
/*
 Option 1: Protocols can mark properties as read-only or read-write.
 ✅This is correct.

 Option 2: Only structs can conform to protocols.
 ❌Any type can conform to protocols.
 */


//2️⃣
/*
 Option 1: You can write extensions for protocols to provide default implementations.
 ✅This lets us share code more easily.

 Option 2: Protocols can define their own protocols internally.
 ❌Protocols cannot contain other protocols.
 */


//3️⃣
/*
 Option 1: You can write extensions for protocols that don't exist.
 ❌This is not possible in Swift.

 Option 2: You can write extensions for Swift's built-in protocols.
 ✅This lets us add functionality very quickly.
 */

//4️⃣
/*
 Option 1: Each type can conform to as many protocols as you want.
 ✅This is correct.

 Option 2: Each data type can conform to only one protocol.
 ❌You can conform to as many as you need.
 */

//5️⃣
/*
 Option 1: Properties must always be read-write.
 ❌They can also be read-only.

 Option 2: You can create one protocol by inheriting from others.
 ✅You can even inherit from multiple protocols if you want to.
 */

//6️⃣
/*
 Option 1: Protocols specify what methods and properties conforming types must have.
 ✅This is correct.

 Option 2: Protocols can contain method implementations.
 ❌Only extensions can contain method implementations.
 */

//7️⃣

//8️⃣

//9️⃣

//1️⃣0️⃣

//1️⃣1️⃣

//1️⃣2️⃣

//: [Next](@next)
