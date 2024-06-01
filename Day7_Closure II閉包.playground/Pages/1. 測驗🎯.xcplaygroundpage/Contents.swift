//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Make sure each function is calling its closure with the correct parameters.

//1️⃣ ❌ 閉包有參數的話，in前面必須說明參數名 參數型別
func login(then action: (String) -> Void) {
    print("Authenticating...")
    let username = "twostraws"
    action(username)
}

login { (a1:String) -> Void in      //Authenticating...
    print("Welcome, \(a1)")         //Welcome, twostraws
}

login { username in                 //Authenticating...
    print("Welcomes, \(username)")  //Welcomes, twostraws
}

login(then: { (a1:String) -> Void in    //Authenticating...
    print("歡迎, \(a1)")                 //歡迎, twostraws
})

//login {
//    print("Welcome, \(username)!")
//}
//2️⃣
func fetchData(then parse: (String) -> Void) {
    let data = "Success!"
    parse(data)
}
fetchData { (data: String) in           //Success!
    print("Data received: \(data)")     //Data received: Success!
}

fetchData(then: { (data:String) -> Void in  //Success!
    print("資料 received: \(data)")          //資料 received: Success!
})
//3️⃣ ❌ 函式參數1是閉包，閉包有參數1是Int無回傳值
//func makePizza(addToppings: (Int)) {
//    print("The dough is ready.")
//    print("The base is flat.")
//    addToppings(3)
//}
func makePizza(addToppings: (Int) -> Void) {
    print("The dough is ready.")
    print("The base is flat.")
    addToppings(3)
}
makePizza { (toppingCount: Int) in
    let toppings = ["ham", "salami", "onions", "peppers"]
    for i in 0..<toppingCount {
        let topping = toppings[i]
        print("I'm adding \(topping)")                      //I'm adding ham
    }                                                       //I'm adding salami
}                                                           //I'm adding onions

//4️⃣
func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}
fix(item: "roof") { (bill: Int) in                          //I've fixed your roof
    print("You want $\(bill) for that? Outrageous!")        //You want $450 for that? Outrageous!
}
//5️⃣
func study(reviseNotes: (String) -> Void) {
    let notes = "Napoleon was a short, dead dude."
    for _ in 1...10 {
        reviseNotes(notes)
    }
}
study { (notes: String) in
    print("I'm reading my notes: \(notes)") //I'm reading my notes: Napoleon was a short, dead dude.
}                                           //重複10次
//6️⃣ ❌ 陣列區隔元素要逗號,
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
        print("I'll place \(button) here...")       //Creating some buttons
    }                                               //I'll place Button 1 here...
}                                                   //I'll place Button 2 here...
                                                    //I'll place Button 3 here...
//7️⃣ ❌ 函式參數名，要與函式body內呼叫的名稱一樣
//func postOnTwitter(handler: (Int) -> Void) {
//    print("What's orange and sounds like a parrot? A carrot.")
//    let replies = 32
//    responseHandler(replies)
//}
func postOnTwitter(responseHandler: (Int) -> Void) {
    print("What's orange and sounds like a parrot? A carrot.")
    let replies = 32
    responseHandler(replies)
}
postOnTwitter { (replies: Int) in
    print("Your post had \(replies) replies.")  //Your post had 32 replies.
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
    print("I'm getting my car.")                //I'm getting my car.
    for direction in directions {               //Go straight ahead
        print(direction)                        //Turn left onto Station Road
    }                                           //Turn right onto High Street
}                                               //You have arrived at London

//9️⃣
func runKidsParty(activities: ([String]) -> Void) {
    let kids = ["Bella", "India", "Phoebe"]
    activities(kids)
}
runKidsParty { (names: [String]) in
    for name in names {
        print("Here's your party bag, \(name).")    //Here's your party bag, Bella
    }                                               //Here's your party bag, India
}                                                   //Here's your party bag, Phoebe
//1️⃣0️⃣ ❌ 函式參數1是閉包，閉包參數1是Double，要有小括弧
//func getMeasurement(handler: Double -> Void) {
//    let measurement = 32.2
//    handler(measurement)
//}
func getMeasurement(handler: (Double) -> Void) {
    let measurement = 32.2
    handler(measurement)
}
getMeasurement { (measurement: Double) in
    print("It measures \(measurement).")    //It measures 32.2.
}
//1️⃣1️⃣
func makeSale(signContract: (String) -> Void) {
    let clientName = "Apple"
    print("\(clientName) should buy our product.")
    print("You're interested? Great! Sign here.")
    signContract(clientName)
}
makeSale { (client: String) in
    print("We agree to pay you $100 million.")      //Apple should buy our product.
    print("Signed, \(client)")                      //You're interested? Great! Sign here.
}                                                   //We agree to pay you $100 million.
                                                    //Signed, Apple
//1️⃣2️⃣ ❌ 呼叫函式時，尾端閉包 需要寫上 -> 回傳
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
processPrimes { (prime: Int) -> Void in
    print("\(prime) is a prime number.")        //2 is a prime number.
    let square = prime * prime                  //2 squared is 4
    print("\(prime) squared is \(square)")      //3 is a prime number.
}                                               //3 squared is 9
                                                //5 is a prime number.
                                                //5 squared is 25
                                                //重複
                                                //19 is a prime number.
                                                //19 squared is 361
                            
//: [Next](@next)
