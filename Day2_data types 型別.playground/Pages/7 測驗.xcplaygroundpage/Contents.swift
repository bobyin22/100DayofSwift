//: [Previous](@previous)

import Foundation

//Which of these are valid in Swift?

//Hint: Arrays and dictionaries can be made in two different ways, for example [Int] or Array<Int> both create arrays.

//1️⃣
//A Dictionary可以寫成
var favoriteColors1: [String: String] = [:]
var favoriteColors2 = [String: String]()
var favoriteColors3 = Dictionary<String, String>()

//B ❌ Array可以寫成
//var measurements = [Double]
var measurements1: Array<Double> = []
var measurements2 = [Double]()


//2️⃣
//A
var states = Set<String>()

//B ❌ Array可以寫成
//var episodeNames = Array()
var episodeNames1: Array<String> = []
var episodeNames2: [String] = []
var episodeNames3 = [String]()

//3️⃣
//A
var answers = [Bool]()

//B ❌ Set可以寫成
//var badges = Set<>()
var badges = Set<Bool>()

//4️⃣
//A
var scores = Array<Int>()


//B ❌ Dictionary可以寫成
//var wines = Dictionary<String: String>()
var wines = Dictionary<String, String>()


//5️⃣
//A
var temperatures = [Double]()

//B ❌ Dictionary可以寫成
//var mountainHeights = [String, Int]()
var mountainHeights = Dictionary<String, Int>()

//6️⃣
//A ❌ Set可以寫成
//var friends = Set[String]()
var friends = Set<String>()

//B
var authorAges = [String: Int]()

//: [Next](@next)
