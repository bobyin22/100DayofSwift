import UIKit

class Person: NSObject {
    @objc dynamic var name: String
    init(name: String) {
        self.name = name
        super.init()
    }
}
let john = Person(name: "John")

let observation = john.observe(\Person.name, options: [.old, .new]) { person, change in
    print("John's name is \(person.name)")
}
john.name = "Johnny"
