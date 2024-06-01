//: [Previous](@previous)

import Foundation

//Which of these create enums with an associated value?
//Hint: Associated values let you attach extra properties to any or all of your enum cases.


//1️⃣
//A ✅
enum Building { case skyscraper(floors: Int) }
//This creates a case called skyscraper with the associated value floors.

//B ❌
//enum role { case administrator }
//This enum has no cases with associated values.

//2️⃣
//A ✅
enum Sport { case running(distance: Int) }
let sport = Sport.running(distance: 3000)
print(sport)    //running(distance: 3000)
//This creates a case called running with the associated value distance.

//B ❌
//enum Status { case read }
//This enum has no cases with associated values.

//3️⃣
//A ❌
//let furniture = [chair, table, couch]
//This creates an array.

//B ✅
enum CharacterClass { case paladin(level: Int) }

//4️⃣
//A ❌
//let chosenHobby = case hobby(name: String) }
//This is invalid Swift.

//B ✅
enum Instruments { case piano(isElectric: Bool) }
//This creates a case called piano with the associated value isElectric.

//5️⃣
//A ✅
enum Forecast { case cloudy(coverage: Int) }
//This creates a case called cloudy with the associated value coverage.

//B ❌
//enum SocialMedia case twitter(username: Int)
//This is missing opening and closing braces around the cases.

//6️⃣
//A ✅
enum Activity { case reading(bookTitle: String) }
//This creates a case called reading with the associated value bookTitle.

//B ❌
//case BandMember(role: String)
//This is missing an enum around the case.
//: [Next](@next)
