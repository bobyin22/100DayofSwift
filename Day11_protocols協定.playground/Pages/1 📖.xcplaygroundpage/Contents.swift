//: [Previous](@previous)

import Foundation

//👵🏻 舊寫法，參數寫死，只能接受固定結構
struct Book {
    var name: String
}
let myBook = Book(name: "我，刀槍不入")

func buy(_ book: Book) {        //⭐️這邊只接受Book結構，所以只能買書
    print("I'm buying \(book.name)")
}
buy(myBook) //I'm buying 我，刀槍不入



//👶🏻 新寫法，參數沒寫死，只要有繼承協定，都能接受
protocol Purchaseable {             //建立一個協定，任何繼承這個協定的都一定要有名字屬性
    var name: String { get set }
}
struct BookNew: Purchaseable {      //建立一個結構，這個結構繼承 協定
    var name: String                //協定說一定要名字屬性
    var author: String
}
let myBookNew = BookNew(name: "年賺18%", author: "施昇輝")

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}
let movie = Movie(name: "泰德·拉索：錯棚教練趣事多", actors: ["Ted Lasso", "Rebecca Welton", "Roy Kent"])

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}
let car = Car(name: "Civic", manufacturer: "Honda")

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}
let coffee = Coffee(name: "拿鐵烏龍", strength: 5)

func buyNew(_ item: Purchaseable) {     //一個函式，參數接受一個協定，不像之前參數只能接受一個結構struct
    print("I'm buying \(item.name)")
}
buyNew(myBookNew)   //I'm buying 年賺18%
buyNew(movie)       //I'm buying 泰德·拉索：錯棚教練趣事多
buyNew(car)         //I'm buying Civic
buyNew(coffee)      //I'm buying 拿鐵烏龍


//: [Next](@next)
