import UIKit

class House {
    var ownerDetails: (() -> Void)?

    func printDetails() {
        print("This is a great house.")
    }

    deinit {
        print("I'm being demolished!")
    }
}

class Owner {
    var houseDetails: (() -> Void)?

    func printDetails() {
        print("I own a house.")
    }

    deinit {
        print("I'm dying!")
    }
}

//print("Creating a house and an owner")
//do {
//    let house = House()
//    let owner = Owner()
//}
//print("Done")


print("Creating a house and an owner")
do {
    let house = House()
    let owner = Owner()
//    house.ownerDetails = owner.printDetails   //retain cycle
//    owner.houseDetails = house.printDetails   //retain cycle
    house.ownerDetails = { [weak owner] in owner?.printDetails() }
    owner.houseDetails = { [weak house] in house?.printDetails() }
}
print("Done")
