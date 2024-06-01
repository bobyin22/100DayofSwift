//: [Previous](@previous)

import Foundation

//題目：Which of these are best stored as arrays?
//Hint: Arrays can hold any number of items, including duplicates, and preserve their order. Sets are preferred when you don't want duplicate items and when order doesn't matter. Tuples are preferred when you want limited items of specific types and names.



//1️⃣
//❌Option 1: A user's address.
//It would be hard to remember which position was their city, state, or country, and cause problems if you made changes in the future.
//
//✅Option 2: Messages in a chat program.
//There can be many messages, and they don't need to be unique.

//2️⃣
//❌Option 1: A list of words that are valid in Scrabble.
//There are very many of these, but they are always unique – a better choice is a set.
//
//✅Option 2: A weather forecast for the next 10 days.
//There would be one item in the array for each day.

//3️⃣
//✅Option 1: Lines in a poem.
//There can be many lines, and they don't need to be unique.
//
//❌Option 2: Whether or not your user is logged in.
//This is best stored as a Boolean.

//4️⃣
//✅Option 1: Songs in an album.
//There can be many songs, and they don't need to be unique.
//
//❌Option 2: The current temperature.
//This is best stored as a double.

//5️⃣
//✅Option 1: Monthly height measurements for a child.
//❌Option 2: A list of all usernames on Twitter.

//6️⃣
//✅Option 1: High scores for a video game.
//There can be many high scores, and they don't need to be unique.
//
//❌Option 2: A person's name.
//This is best stored as a string.


//: [Next](@next)
