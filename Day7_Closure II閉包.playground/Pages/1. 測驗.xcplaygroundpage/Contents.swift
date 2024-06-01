import UIKit

//1️⃣ ❌ 呼叫時要有參數
func login(then action: (String) -> Void) {
    print("Authenticating...")
    let username = "twostraws"
    action(username)
}
//login {
//    print("Welcome, \(username)!")
//}

login { username in
    print("無回傳\(username)") //Authenticating...
}                             //無回傳twostraws


//2️⃣
func fetchData(then parse: (String) -> Void) {
    let data = "Success!"
    parse(data)
}
fetchData { (data: String) in
    print("Data received: \(data)") //Data received: Success!
}


//3️⃣ ❌ 參數1是閉包 閉包有參數Int，閉包回傳空
//func makePizza(addToppings: (Int)) {
//    print("The dough is ready.")
//    print("The base is flat.")
//    addToppings(3)
//}

func makePizza(addToppings: (Int)-> Void) {
    print("The dough is ready.")
    print("The base is flat.")
    addToppings(3)
}
makePizza { (toppingCount: Int) in
    let toppings = ["ham", "salami", "onions", "peppers"]
    for i in 0..<toppingCount {
        let topping = toppings[i]
        print("I'm adding \(topping)")
    }
}                                           //The dough is ready.
                                            //The base is flat.
                                            //I'm adding ham
                                            //I'm adding salami
                                            //I'm adding onio
//4️⃣
func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}
fix(item: "roof") { (bill: Int) in
    print("You want $\(bill) for that? Outrageous!")    //I've fixed your roof
}                                                       //You want $450 for that? Outrageous!

//5️⃣
func study(reviseNotes: (String) -> Void) {
    let notes = "Napoleon was a short, dead dude."
    for _ in 1...10 {
        reviseNotes(notes)
    }
}
study { (notes: String) in
    print("I'm reading my notes: \(notes)")
}

//I'm reading my notes: Napoleon was a short, dead dude. (連續10次)
//I'm reading my notes: Napoleon was a short, dead dude. (連續10次)
//I'm reading my notes: Napoleon was a short, dead dude. (連續10次)
//.....

//6️⃣ ❌陣列要, 區別元素
//func createInterface(positioning: ([String]) -> Void) {
//    print("Creating some buttons")
//    let buttons = ["Button 1" "Button 2" "Button 3"]
//    positioning(buttons)
//}

func createInterface(positioning: ([String]) -> Void) {
    print("Creating some buttons")
    let buttons = ["Button 1", "Button 2", "Button 3"]
    positioning(buttons)
}
createInterface { (buttons: [String]) in
    for button in buttons {
        print("I'll place \(button) here...")       //I'll place Button 1 here...
    }                                               //I'll place Button 2 here...
}                                                   //I'll place Button 3 here...

//7️⃣ ❌函式內 參數名 要一樣
//func postOnTwitter(handler: (Int) -> Void) {
//    print("What's orange and sounds like a parrot? A carrot.")
//    let replies = 32
//    responseHandler(replies)
//}

func postOnTwitter(handler: (Int) -> Void) {
    print("What's orange and sounds like a parrot? A carrot.")
    let replies = 32
    handler(replies)
}
postOnTwitter { (replies: Int) in
    print("Your post had \(replies) replies.")
}

//8️⃣
func getDirections(to destination: String, then travel: ([String]) -> Void) {
    let directions = [
        "Go straight ahead",
        "Turn left onto Station Road",
        "Turn right onto High Street",
        "You have arrived at \(destination)"
    ]
    travel(directions)
}
getDirections(to: "London") { (directions: [String]) in
    print("I'm getting my car.")
    for direction in directions {
        print(direction)                            //Go straight ahead
    }                                               //Turn left onto Station Road
}                                                   //Turn right onto High Street
                                                    //You have arrived at London

//9️⃣
func runKidsParty(activities: ([String]) -> Void) {
    let kids = ["Bella", "India", "Phoebe"]
    activities(kids)
}
runKidsParty { (names: [String]) in
    for name in names {
        print("Here's your party bag, \(name).")        //Here's your party bag, Bella.
    }                                                   //Here's your party bag, India.
}                                                       //Here's your party bag, Phoebe.

//1️⃣0️⃣ ❌閉包參數要()
//func getMeasurement(handler: Double -> Void) {
//    let measurement = 32.2
//    handler(measurement)
//}
func getMeasurement(handler: (Double) -> Void) {
    let measurement = 32.2
    handler(measurement)
}

getMeasurement { (measurement: Double) in
    print("It measures \(measurement).")            //It measures 32.2.
}

//1️⃣1️⃣
func makeSale(signContract: (String) -> Void) {
    let clientName = "Apple"
    print("\(clientName) should buy our product.")
    print("You're interested? Great! Sign here.")
    signContract(clientName)
}
makeSale { (client: String) in
    print("We agree to pay you $100 million.")
    print("Signed, \(client)")
}                                                   //Apple should buy our product.
                                                    //You're interested? Great! Sign here.
                                                    //We agree to pay you $100 million.
                                                    //Signed, Apple


//1️⃣2️⃣ ❌函式呼叫時 參數是閉包 所以要有in
func processPrimes(using closure: (Int) -> Void) {
    let primes = [2, 3, 5, 7, 11, 13, 17, 19]
    for prime in primes {
        closure(prime)
    }
}
//processPrimes { (prime: Int)
//    print("\(prime) is a prime number.")
//    let square = prime * prime
//    print("\(prime) squared is \(square)")
//}

processPrimes { (prime: Int) in
    print("\(prime) is a prime number.")            //2 is a prime number.
    let square = prime * prime
    print("\(prime) squared is \(square)")          //2 squared is 4
}
                                                    //3 is a prime number.
                                                    //3 squared is 9
                                                    //5 is a prime number.
                                                    //5 squared is 25
                                                    //7 is a prime number.
                                                    //7 squared is 49
                                                    //....
                                                    //19 is a prime number.
                                                    //19 squared is 361
