//: [Previous](@previous)

protocol Identifiable {
    var id: String { get set }      //屬性要可讀get 屬性要可寫set
}
struct User: Identifiable {
    var id: String
    
    func displayID(thing: Identifiable) {
        print("My ID is \(thing.id)")
        print("wo")
    }
}

let myUser = User(id: "9916024")
let myParemeter = User(id: "85757")

myUser.displayID(thing: myParemeter)    //My ID is 85757
                                        //wo

//: [Next](@next)
