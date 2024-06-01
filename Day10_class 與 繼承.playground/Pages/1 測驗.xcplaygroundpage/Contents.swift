//: [Previous](@previous)

import Foundation

//1️⃣
//class Painting {
//    var title: String
//    var artist: String
//    var paintType: String
//    func init(title: String, artist: String, paintType: String) {
//        self.title = title
//        self.artist = artist
//        self.paintType = paintType
//    }
//}
class Painting {
    var title: String
    var artist: String
    var paintType: String
    init(title: String, artist: String, paintType: String) {
        self.title = title
        self.artist = artist
        self.paintType = paintType
    }
}
let painting = Painting(title: "蒙娜麗莎的微笑", artist: "達文西", paintType: "油畫")
print(painting.title, painting.artist, painting.paintType) //蒙娜麗莎的微笑 達文西 油畫


//2️⃣
class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}
let boardGame = BoardGame(name: "大富翁")
print(boardGame.name, boardGame.minimumPlayers, boardGame.maximumPlayers)   //大富翁 1 4

//3️⃣ ❌ 要class而不是struct
//struct Sandwich {
//    var name: String
//    var fillings: [String]
//}
class Sandwich {
    var name: String
    var fillings: [String]
    init(name: String, fillings: [String]) {
        self.name = name
        self.fillings = fillings
    }
}
let blt = Sandwich(name: "BLT", fillings: ["Bacon", "Lettuce", "Tomato"])
print(blt.name, blt.fillings)   //BLT ["Bacon", "Lettuce", "Tomato"]

//4️⃣
class TIE {
    var name: String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
print(fighter.name, fighter.speed)              //TIE Fighter 50
let interceptor = TIE(name: "TIE Interceptor", speed: 70)
print(interceptor.name, interceptor.speed)      //TIE Interceptor 70


//5️⃣
class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String) {
        self.hero = heroName
        self.enemy = enemyName
    }
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")
print(monkeyIsland.hero, monkeyIsland.enemy)    //Guybrush Threepwood LeChuck

//6️⃣
//class Image {
//    var filename: String
//    var isAnimated: Bool
//    init(filename: String, isAnimated: Bool) {
//        filename = filename
//        isAnimated = isAnimated
//    }
//}
class Image {
    var filename: String
    var isAnimated: Bool
    init(filename: String, isAnimated: Bool) {
        self.filename = filename
        self.isAnimated = isAnimated
    }
}
let image = Image(filename: "資料夾", isAnimated: true)
print(image.filename, image.isAnimated)     //資料夾 true

//7️⃣
class ThemePark {
    var entryPrice: Int
    var rides: [String]
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}
let themePark = ThemePark(rides: ["摩托車", "汽車", "火車"])
print(themePark.entryPrice, themePark.rides)    //6 ["摩托車", "汽車", "火車"]

//8️⃣
//struct Poll {
//    var question: String
//    var option1: String
//    var option2: String
//    var votes: [Int]
//}
class Poll {
    var question: String
    var option1: String
    var option2: String
    var votes: [Int]
    init(question: String, option1: String, option2: String, votes: [Int]) {
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.votes = votes
    }
}
let question = "Jet black or rose gold?"
let poll = Poll(question: question, option1: "Jet black", option2: "Rose gold", votes: [0, 0, 0, 0, 1, 0, 1])
print(poll.question, poll.option1, poll.option2, poll.votes)    //Jet black or rose gold? Jet black Rose gold [0, 0, 0, 0, 1, 0, 1]

//9️⃣
class Empty { 
    
}
let nothing = Empty()
print(nothing)      //__lldb_expr_69.Empty

//1️⃣0️⃣
//class Attendee {
//    var badgeNumber = 0
//    var name = "Anonymous"
//    var company = "Unknown"
//    init(badge: Int) {
//        self.badgeNumber = badgeNumber
//    }
//}
class Attendee {
    var badgeNumber = 0
    var name = "Anonymous"
    var company = "Unknown"
    init(badge: Int) {
        self.badgeNumber = badge
    }
}
let attendee = Attendee(badge: 5)
print(attendee.badgeNumber, attendee.name, attendee.company)    //5 Anonymous Unknown

//1️⃣1️⃣
class Podcast {
    var hosts: [String]
    init(hosts: [String]) {
        self.hosts = hosts
    }
}
let podcast = Podcast(hosts: ["電扶梯走左邊", "劉軒的How to人生學"])
print(podcast.hosts)    //["電扶梯走左邊", "劉軒的How to人生學"]

//1️⃣2️⃣
//class Singer {
//    var name: String
//    var favoriteSong: String
//    init(name: String, song: String) {
//        self.name = name
//        self.song = song
//    }
//}
class Singer {
    var name: String
    var favoriteSong: String
    init(name: String, song: String) {
        self.name = name
        self.favoriteSong = song
    }
}
let taylor = Singer(name: "Taylor Swift", song: "Blank Space")
print(taylor.name, taylor.favoriteSong)     //Taylor Swift Blank Space

//: [Next](@next)
