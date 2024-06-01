//: [Previous](@previous)

import Foundation

//1️⃣
struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}
let amplifier = Amplifier(currentVolume: 3)
print(amplifier.currentVolume)  //3
print(Amplifier.maximumVolume)  //11

//2️⃣ ❌ answer String型別 與 參數answer Int型別 不一樣
//struct Question {
//    static let answer = 42
//    var questionText = "Unknown"
//    init(questionText: String, answer: String) {
//        self.questionText = questionText
//        self.answer = answer
//    }
//}
struct Question {
    static let answer = 42
    var questionText = "Unknown"
    init(questionText: String, answer: Int) {
        self.questionText = questionText
        //self.answer = answer
    }
}
let question = Question(questionText: "演算法", answer: 43)
print(question.questionText)    //演算法
print(Question.answer)          //42

//3️⃣
struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}
let newsStroy = NewsStory(headline: "蘋果日報頭條", isBreaking: true)
print(newsStroy.headline)            //蘋果日報頭條
print(NewsStory.breakingNewsCount)  //1
print(NewsStory.regularNewsCount)   //0

//4️⃣ ❌ static 後面少了 var 或 let
//struct Marathon {
//    static distance = 42
//    var name: String
//    var location: String
//}
struct Marathon {
    static var distance = 42
    var name: String
    var location: String
}
let marathon = Marathon(name: "舒跑杯", location: "台北市政府")
print(marathon.name, marathon.location) //舒跑杯 台北市政府
print(Marathon.distance)                //42

//5️⃣ ❌ static let deckSize 要給值啊
//struct PlayingCards {
//    static let deckSize
//    var pictureStyle: String
//}
struct PlayingCards {
    static var deckSize = "M"
    var pictureStyle: String
}
let playingCards = PlayingCards(pictureStyle: "身降桌")
print(playingCards.pictureStyle)    //身降桌
print(PlayingCards.deckSize)        //M
PlayingCards.deckSize = "S"
print(PlayingCards.deckSize)        //S

//6️⃣ ❌屬性 allCats 是 let，不能在init被改值
//struct Cat {
//    static let allCats = [Cat]()
//    init() {
//        Cat.allCats.append(self)
//    }
//    static func chorus() {
//        for _ in allCats {
//            print("Meow!")
//        }
//    }
//}
struct Cat {
    static var allCats = [Cat]()
    init() {
        Cat.allCats.append(self)
    }
    static func chorus() {
        for _ in allCats {
            print("Meow!")
        }
    }
}
print(Cat.allCats.count)    //0
let cat1 = Cat()
print(Cat.allCats.count)    //1
let cat2 = Cat()
print(Cat.allCats.count)    //2
Cat.chorus()                //Meow!
                            //Meow!

//7️⃣ static 不屬與struct 內，他是外層的東西，不能在init被改
//struct Person {
//    static var population = 0
//    var name: String
//    init(personName: String) {
//        name = personName
//        population += 1
//    }
//}
struct Person1 {
    static var population = 0
    var name: String
    init(personName: String) {
        name = personName
        Person1.population += 1     //改Person1.population 就可以被init改
    }
}
let prson1 = Person1(personName: "林書豪")
print(Person1.population)    //1
let prson1_1 = Person1(personName: "林書緯")
print(Person1.population)    //2

struct Person2 {
    static var population = 0
    var name: String
    init(personName: String) {      //或是直接init不要對static做事
        name = personName
    }
}
let person2 = Person2(personName: "Kobe Bryant")
print(person2.name)          //Kobe Bryant
print(Person2.population)    //0

//8️⃣
struct FootballTeam {
    static let teamSize = 11
    var players: [String]
}
let footballTeam = FootballTeam(players: ["梅西", "C羅"])
print(footballTeam.players)     //["梅西", "C羅"]
print(FootballTeam.teamSize)    //11

//9️⃣
struct Pokemon {
    static var numberCaught = 0
    var name: String
    static func catchPokemon() {
        print("Caught!")
        Pokemon.numberCaught += 1
    }
}
let pokemon = Pokemon(name: "皮卡丘")
print(pokemon.name)                 //皮卡丘
print(Pokemon.numberCaught)         //0
print(Pokemon.catchPokemon())       //Caught!
print(Pokemon.numberCaught)         //1


//1️⃣0️⃣
struct Order {
    static let orderFormat = "XXX-XXXX"
    var orderNumber: String
}
let order = Order(orderNumber: "1號")
print(order.orderNumber)    //1號
print(Order.orderFormat)    //XXX-XXXX
    
//1️⃣1️⃣ ticketsUsed 要加上static
//struct Raffle {
//    var ticketsUsed = 0
//    var name: String
//    var tickets: Int
//    init(name: String, tickets: Int) {
//        self.name = name
//        self.tickets = tickets
//        Raffle.ticketsUsed += tickets
//    }
//}
struct Raffle {
    static var ticketsUsed = 0
    var name: String
    var tickets: Int
    init(name: String, tickets: Int) {
        self.name = name
        self.tickets = tickets
        Raffle.ticketsUsed += tickets   //0 + 3 = 3
    }
}
let raffle = Raffle(name: "刮刮樂", tickets: 3)
print(raffle.name, raffle.tickets)  //刮刮樂 3
print(Raffle.ticketsUsed)           //3

//1️⃣2️⃣
struct LegoBrick {
    static var numberMade = 0
    var shape: String
    var color: String
    init(shape: String, color: String) {
        self.shape = shape
        self.color = color
        LegoBrick.numberMade += 1
    }
}
let legoBrick = LegoBrick(shape: "圓形", color: "紅色")
print(legoBrick.shape, legoBrick.color)     //圓形 紅色
print(LegoBrick.numberMade)                 //1

//: [Next](@next)
