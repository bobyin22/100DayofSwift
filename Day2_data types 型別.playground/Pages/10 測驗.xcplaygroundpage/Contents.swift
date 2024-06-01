//: [Previous](@previous)

import Foundation

//Which of these statements about enums with raw values are true?
//Hint: Raw values let us give each of our enum cases a value so they are more than just names.


//1️⃣
//❌Option 1: Raw values make enums into dictionaries.
//Enums with raw values are still just enums.

//✅Option 2: You can give each case specific values if you want.
//This is optional, but it gives us fine-grained control when needed.

//2️⃣
//✅Option 1: Integer raw values count from 0 automatically.
//You can modify this to something specific if you want.

//❌Option 2: If you give one case a value you must give them all values.
//Swift is able to infer values based on the ones you provide.

//3️⃣
//✅Option 1: You don't need to use raw values.
//Raw values are entirely optional.

//❌Option 2: Raw values and associated values are the same.
//Associated values attach extra data to an enum case; raw values are underlying data types for each case.

//4️⃣
//❌Option 1: Raw values must always be strings.
//You can use something else if you wish, such as integers.

//✅Option 2: You can use integers for raw values.
//Integers are one of the most common raw value types.

//5️⃣
//✅Option 1: Raw values let us create enum values dynamically.
//We can create an enum from its raw value.

//❌Option 2: Raw values can't be used directly.
//You can read them if you want, or create enum instances from them.

//6️⃣
//✅Option 1: Raw values let us give meaning to enum cases.
//They let us say that earth has an underlying value of 3, for example.

//❌Option 2: Raw values are required for enums.
//Raw values are optional.

//: [Next](@next)
