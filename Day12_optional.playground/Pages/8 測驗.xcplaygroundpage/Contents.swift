//: [Previous](@previous)

import Foundation

//1️⃣
//A ✅
//Option 1: When using try you must catch all errors that can be thrown.
//This is correct.

//B ❌
//Option 2: Functions that might throw errors must be marked throws?
//They must be marked throws.

//2️⃣
//A ❌
//Option 1: If you use try and know your function won't throw errors, you don't need to catch anything.
//Swift will force you to catch all errors.

//B ✅
//Option 2: If you use try! and your call throws an error, your code crashes.
//This is correct.

//3️⃣
//A ✅
//Option 1: Functions that throw errors must be marked throws.
//This is correct.

//B ❌
//Option 2: Throwing functions can throw multiple errors using tuples.
//We must throw exactly one error at a time.

//4️⃣
//A ❌
//Option 1: Throwing functions must never call other throwing functions.
//They can call other functions freely, throwing or otherwise.

//B ✅
//Option 2: You can combine try? with if let
//This is correct.

//5️⃣
//A ✅
//Option 1: Using try? converts a function's return value into an optional.
//This is correct.

//B ❌
//Option 2: If you use try? and your call throws an error, your code crashes.
//If the calls throws an error you'll get back nil.

//6️⃣
//A ✅
//Option 1: If you use try you must either catch the error or mark your function as throws
//This is correct.

//B ❌
//Option 2: You can use try?! to combine try? and try!
//This does not exist in Swift.

//: [Next](@next)
