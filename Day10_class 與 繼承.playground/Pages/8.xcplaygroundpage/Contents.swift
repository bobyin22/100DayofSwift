//: [Previous](@previous)

import Foundation

//1️⃣ class 與 struct 都可以建立自己的型別、屬性、方法
class Dog {
    var name: String
    init(name: String) {            //class必須要寫init
        self.name = name
    }
    func makeNoise() {
        print("Woof!")
    }
}

//2️⃣
class Poodle: Dog {
    override init(name: String) {
        super.init(name: name)
    }
}

////參考
// class DogX {
//     var name: String
//     var breed: String
//
//     init(name: String, breed: String) {
//         self.name = name
//         self.breed = breed
//     }
// }
//
// class PoodleX: DogX {
//     init(name: String) {
//         super.init(name: name, breed: "Poodle")        //這裡因為跟父類init不完全一樣，所以不用Override
//     }
// }
 

//3️⃣ class前面加上final，這個類就不能被別人繼承
final class DogFinal {
    var name: String
    init(name: String) {
        self.name = name
    }
}


//4️⃣ override 可以改method
class Poodle2: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}

//5️⃣ class實例是指向同一個記憶體
var myDog = Dog(name: "小黃")
var hisDog = myDog
hisDog.name = "小小小黃"
print(myDog.name)       //小小小黃
print(hisDog.name)      //小小小黃

//6️⃣ 一個類，被銷毀時deinit表示
class Job {
    init() {
        print("可以上班了")
    }
    deinit {
        print("可以退休了")
    }
}
var myJob: Job? = Job()     //可以上班了
myJob = nil                 //可以退休了

//7️⃣
class Book {
    var name = "原子習慣"
}
let myBook = Book()
print(myBook.name)      //原子習慣
myBook.name = "小狗錢錢"  //class只要裡面屬性是var，實例即使是let，也能改
print(myBook.name)      //原子習慣

//: [Next](@next)
