import UIKit

//1️⃣ ❌ author 尚未給值 測驗
struct Book {
    var title: String
    var author: String
    init(bookTitle: String, bookAuthor: String) {
        title = bookTitle
        author = bookAuthor
    }
}
//let book = Book(bookTitle: "Beowulf")
let book = Book(bookTitle: "笑傲江湖", bookAuthor: "金庸")
print(book.title, book.author)  //笑傲江湖 金庸

//2️⃣
//struct Media {
//    var type: String
//    var users: Int
//    init() {
//        
//    }
//}
struct Media {
    var type: String
    var users: Int
    init(type: String, users: Int) {
        self.type = type
        self.users = users
    }
}
let tv = Media(type: "Television", users: 10_000_000)
print(tv.type, tv.users)    //Television 10000000


//3️⃣
struct Experiment {
    var cost = 0
}
let lhc = Experiment(cost: 13_250_000_000)
print(lhc.cost)     //13250000000

//4️⃣ ❌ 注意大小寫
struct Wine {
    var grape: String
    var region: String
}
//let malbec = Wine(grapes: "Malbec", region: "Cahors")
let malbec = Wine(grape: "Malbec", region: "Cahors")
print(malbec.grape, malbec.region)  //Malbec Cahors


//5️⃣ //沒給值，但是要() 這樣有生成實例
struct Dictionary {
    var words = Set<String>()   //有()
}
let dictionary = Dictionary()
print(dictionary.words)         //[]


struct Test {
    var a1 = String()
}
let myTest = Test()
print(myTest.a1)                //\n

//6️⃣ ❌ isOlympicSport 是布林值
struct Sport {
    var name: String
    var isOlympicSport: Bool
}
//let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: "false")
let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.name, chessBoxing.isOlympicSport) //Chessboxing false

//7️⃣
struct Country {
    var name: String                    //自訂，依據參數給
    var usesImperialMeasurements: Bool  //false
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}

let myCountry = Country(countryName: "哈哈")
print(myCountry.name, myCountry.usesImperialMeasurements)   //哈哈 false

//8️⃣ ❌ init 不用寫func
//struct Tree {
//    var type: String        //固定
//    var hasFruit: Bool      //true
//    func init() {
//        type = "Cherry"
//        hasFruit = true
//    }
//}
struct Tree {
    var type: String        //固定
    var hasFruit: Bool      //true
    init() {
        type = "Cherry"
        hasFruit = true
    }
}
let cherryTree = Tree()
print(cherryTree.type, cherryTree.hasFruit) //Cherry true

//9️⃣ ❌ maxWarp 沒給值
//struct Starship {
//    var name: String        //自訂，等於參數
//    var maxWarp: Double
//    init(starshipName: String) {
//        name = starshipName
//    }
//}
struct Starship {
    var name: String        //自訂，等於參數
    var maxWarp: Double
    init(starshipName: String, starshipMasWarp: Double) {
        name = starshipName
        maxWarp = starshipMasWarp
    }
}
//let voyager = Starship(starshipName: "Voyager")
let voyager = Starship(starshipName: "Voyager", starshipMasWarp: 100.0)
print(voyager.name, voyager.maxWarp)    //Voyager 100.0


//1️⃣0️⃣
struct Message {
    var from: String
    var to: String
    var content: String
    init() {
        from = "Unknown"
        to = "Unknown"
        content = "Yo"
    }
}
let message = Message()
print(message.from, message.to, message.content)        //Unknown Unknown Yo

//1️⃣1️⃣
struct PowerTool {
    var name: String
    var cost: Int
}
let drill = PowerTool(name: "Hammer Drill", cost: 80)
print(drill.name, drill.cost)       //Hammer Drill 80

//1️⃣2️⃣
struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)
print(drawers.height, drawers.width, drawers.area)      //1.4 1.0 1.4
