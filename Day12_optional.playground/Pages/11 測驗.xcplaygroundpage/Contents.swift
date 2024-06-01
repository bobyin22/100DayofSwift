//: [Previous](@previous)

import Foundation

//1️⃣
func mowGrass(to height: Double?) {
    guard let height = height else { return }
    print("Mowing the grass to \(height).")
}
mowGrass(to: 6.0)       //Mowing the grass to 6.0

//2️⃣ ❌ 要guard let或if let來解包
let coffee: String? = "Cappuccino"
//let unwrappedCoffee: String = coffee!
if let unwrappedCoffee = coffee {
    print(unwrappedCoffee)  //Cappuccino
}

//3️⃣
func process(order: String) {
    print("OK, I'll get your \(order).")
}
let pizzaRequest: String! = "pizza"
process(order: pizzaRequest)            //OK, I'll get your pizza.

//4️⃣ ❌ throws -> String
enum NetworkError: Error {
    case insecure
    case noWifi
}
//func downloadData(from url: String) -> String {
//    if url.hasPrefix("https://") {
//        return "This is the best Swift site ever!"
//    } else {
//        throw NetworkError.insecure
//    }
//}
func downloadData(from url: String) throws -> String {
    if url.hasPrefix("https://") {
        return "This is the best Swift site ever!"
    } else {
        throw NetworkError.insecure
    }
}
if let data = try? downloadData(from: "https://www.hackingwithswift.com") {
    print(data)                                 //This is the best Swift site ever!
} else {
    print("Unable to fetch the data.")
}

//5️⃣
let owlVariety: String? = nil
print(owlVariety ?? "Unknown owl")  //Unknown owl

//6️⃣ ❌ class才能繼承
//struct Furniture { }
//struct DeckChair: Furniture { }
class Furniture { }
class DeckChair: Furniture { }
let chair = DeckChair()
if let furniture = chair as? Furniture {
    print("This is furniture.")             //This is furniture.
}

//7️⃣
struct Dog {
    var name: String
    init?(name: String) {
        guard name == "Lassie" else {
            print("Sorry, wrong dog!")
            return nil
        }
        self.name = name
    }
}
let dog = Dog(name: "Fido")

//8️⃣
let names = ["John", "Paul", "George", "Ringo"]
//let upperRingo = names.last.uppercased()
let upperRingo = names.last?.uppercased()   //RINGO

//9️⃣ ?? 才是 Nil coalescing
let birthYear: Int? = nil
//let year = birthYear ? "Unknown"
let year = birthYear ?? 111     //111

//1️⃣0️⃣
let cat: String? = "Toby"
if let cat = cat {
    print("The cat's name is \(cat).")      //The cat's name is Toby
}

//1️⃣1️⃣
let doctor: String? = "Dr Singh"
//let assignedDoctor: String = doctor?
if let assignedDoctor = doctor {
    print("\(assignedDoctor)解包成功")  //Dr Singh解包成功
}

//1️⃣2️⃣ guard let 才能解包
//func brewBeer(to strength: Double?) {
//    guard strength = strength else { return }
//    print("Let's brew some beer!")
//}
func brewBeer(to strength: Double?) {
    guard let strength = strength else { return }
    print("Let's brew some beer!")
}
brewBeer(to: 5.5)       //Let's brew some beer!

//: [Next](@next)
