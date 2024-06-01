//: [Previous](@previous)

import Foundation

//原則1 屬性的初始，必須在當初宣告屬性的類別裡進行
//原則2 子類別得先完成自己屬性的初始後，才能進行父類別屬性的初始

//1️⃣ ❌ Truck 類，super.init 參數要放入參數值
class Vehicle {
    var wheels: Int
    init(wheels: Int) {
        self.wheels = wheels
    }
}
//class Truck: Vehicle {
//    var goodsCapacity: Int
//    init(wheels: Int, goodsCapacity: Int) {
//        self.goodsCapacity = goodsCapacity
//        super.init()
//    }
//}
class Truck: Vehicle {
    var goodsCapacity: Int
    init(goodsCapacity: Int, wheels: Int) {     //原則1 屬性的初始，必須在當初宣告屬性的類別裡進行
        self.goodsCapacity = goodsCapacity
        super.init(wheels: wheels)              //原則2 子類別得先完成自己屬性的初始後，才能進行父類別屬性的初始
    }
}
let truck = Truck(goodsCapacity: 4, wheels: 100)
print(truck.wheels, truck.goodsCapacity)            //4 100

//2️⃣ ❌ Student 類 需要init
//class Student {
//    var name: String
//}
class Student {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class UniversityStudent: Student {
    var annualFees: Int
    init(name: String, annualFees: Int) {
        self.annualFees = annualFees
        super.init(name: name)
    }
}
let universityStudent = UniversityStudent(name: "台灣大學學生", annualFees: 10_000)
print(universityStudent.name, universityStudent.annualFees)         //台灣大學學生 10000


//3️⃣
class Handbag {
    var price: Int
    init(price: Int) {
        self.price = price
    }
}
class DesignerHandbag: Handbag {
    var brand: String
    init(brand: String, price: Int) {
        self.brand = brand
        super.init(price: price)
    }
}
let designerHandbad = DesignerHandbag(brand: "Nike", price: 3_000)
print(designerHandbad.brand, designerHandbad.price)     //Nike 3000

//4️⃣
class Product {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Book: Product {
    var isbn: String
    init(name: String, isbn: String) {
        self.isbn = isbn
        super.init(name: name)
    }
}
let book = Book(name: "窮爸爸富爸爸", isbn: "90331555")
print(book.name, book.isbn) //窮爸爸富爸爸 90331555

//5️⃣ ❌ 父類init裡面要self.cpu = cup
//class Computer {
//    var cpu: String
//    var ramGB: Int
//    init(cpu: String, ramGB: Int) {
//        cpu = cpu
//        ramGB = ramGB
//    }
//}
class Computer {
    var cpu: String
    var ramGB: Int
    init(cpu: String, ramGB: Int) {
        self.cpu = cpu
        self.ramGB = ramGB
    }
}
class Laptop: Computer {
    var screenInches: Int
    init(screenInches: Int, cpu: String, ramGB: Int) {
        self.screenInches = screenInches
        super.init(cpu: cpu, ramGB: ramGB)
    }
}
let lapTop = Laptop(screenInches: 24, cpu: "M1", ramGB: 16)
print(lapTop.screenInches, lapTop.cpu, lapTop.ramGB)        //24 M1 16

//6️⃣
class Bicycle {
    var color: String
    init(color: String) {
        self.color = color
    }
}
class MountainBike: Bicycle {
    var tireThickness: Double
    init(color: String, tireThickness: Double) {
        self.tireThickness = tireThickness
        super.init(color: color)
    }
}
let mountainBike = MountainBike(color: "黃色", tireThickness: 27.0)
print(mountainBike.color, mountainBike.tireThickness)       //黃色 27.0

//7️⃣ ❌ 兩個類的名字不能一樣
class SmartPhone {
    var price: Int
    init(price: Int) {
        self.price = price
    }
}
//class SmartPhone: SmartPhone {
//    var features: [String]
//    init(features: [String]) {
//        self.features = features
//        super.init(price: features.count * 50)
//    }
//}
class IphoneSmartPhone: SmartPhone {
    var features: [String]
    init(features: [String]) {
        self.features = features
        super.init(price: features.count * 50)
    }
}
let iphoneSmartPhone = IphoneSmartPhone(features: ["動態島", "Widget"])
print(iphoneSmartPhone.features, iphoneSmartPhone.price)    //["動態島", "Widget"] 100


//8️⃣ ❌ 子類：父類，沒有寫繼承誰
class Dog {
    var breed: String
    var isPedigree: Bool
    init(breed: String, isPedigree: Bool) {
        self.breed = breed
        self.isPedigree = isPedigree
    }
}
//class Poodle {
//    var name: String
//    init(name: String) {
//        self.name = name
//        super.init(breed: "Poodle", isPedigree: true)
//    }
//}
class Poodle: Dog {
    var name: String
    init(name: String) {
        self.name = name
        super.init(breed: "Poodle", isPedigree: true)
    }
}
let poodle = Poodle(name: "小白")
print(poodle.name, poodle.breed, poodle.isPedigree) //小白 Poodle true

//9️⃣
class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Piano: Instrument {
    var isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
        super.init(name: "Piano")
    }
}
let piano = Piano(isElectric: false)
print(piano.name, piano.isElectric)     //Piano false

//1️⃣0️⃣
class Printer {
    var cost: Int
    init(cost: Int) {
        self.cost = cost
    }
}
class LaserPrinter: Printer {
    var model: String
    init(model: String, cost: Int) {
        self.model = model
        super.init(cost: cost)
    }
}
let laserPrinter = LaserPrinter(model: "M83585", cost: 2_000)
print(laserPrinter.model, laserPrinter.cost)    //M83585 2000

//1️⃣1️⃣ ❌ 父類 不需要 super init
//class Food {
//    var name: String
//    var nutritionRating: Int
//    super init(name: String, nutritionRating: Int) {
//        self.name = name
//        self.nutritionRating = nutritionRating
//    }
//}
class Food {
    var name: String
    var nutritionRating: Int
    init(name: String, nutritionRating: Int) {
        self.name = name
        self.nutritionRating = nutritionRating
    }
}
class Pizza: Food {
    init() {
        super.init(name: "Pizza", nutritionRating: 3)
    }
}
let pizza = Pizza()
print(pizza.name, pizza.nutritionRating)    //Pizza 3

//1️⃣2️⃣
class Shape {
    var sides: Int
    init(sides: Int) {
        self.sides = sides
    }
}
class Rectangle: Shape {
    var color: String
    init(color: String) {
        self.color = color
        super.init(sides: 4)
    }
}
let rectangle = Rectangle(color: "藍色")
print(rectangle.sides, rectangle.color) //4 藍色


//: [Next](@next)
