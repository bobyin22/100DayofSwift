import UIKit


//傳統寫法
func setAge1(person: String, value: Int) {
    print("\(person) is now \(value)")
}

setAge1(person: "Paul", value: 40)


//有標籤寫法 (Parameter labels)
func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}


setAge(for: "Paul", to: 40)

