//: [Previous](@previous)

import Foundation

//1️⃣
//A ✅
//Option 1: Swift uses nil to represent the absence of a value.
//This is correct.

//B ❌
//Option 2: You shouldn't pass optionals into functions
//You can do so if you wish; there's no reason not to.

//2️⃣
//A ❌
//Option 1: Arrays can't be optional
//Arrays can be optional.

//B ✅ String! 已經解包了，所以不用再if let 解包
//Option 2: A String! does not need to be unwrapped before use.
//If you access an implicitly unwrapped optional while it contains nil, your code will crash.

//3️⃣
//A ✅ 如果是nil還強制解包，會crash
//Option 1: If you try to use an implicitly unwrapped optional when it is nil, your code crashes.
//This is correct.


//B ❌ 變數可以賦值nil或其他值，都可以
//Option 2: Once an optional has a value, you can't set it back to nil.
//You can set an optional back to nil whenever you want.

//4️⃣
//A ❌
//Option 1: You can't use both String! and String? in the same program.
//You can mix and match these all you need.

//B ✅
//Option 2: You can use if let or guard let to unwrap optionals.
//This is correct.

//5️⃣
//A ✅
//Option 1: A String? must be unwrapped before use.
//This is correct.

//B ❌
//Option 2: String? can be nil, but String! can't.
//Both can be nil.

let a1: Int! = nil
print(a1)   //nil

//6️⃣
//A ✅
//Option 1: Optionals allow us to represent the absence of a value.
//They can store a regular value for their type or nil.

//B ❌ 雖然都是optional但是 String?要求要解包 String!不用
//Option 2: String? and String! behave the same.
//Although they are both optional, the former requires unwrapping before use whereas the latter does not.

//: [Next](@next)
