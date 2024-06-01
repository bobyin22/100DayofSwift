//: [Previous](@previous)

import Foundation

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
            return "The album \(name) sold lots"
        }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    override func getPerformance() -> String {
            return "The studio album \(name) sold lots"
        }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
            return "The live album \(name) sold lots"
        }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

//這就是OOP的多型，可以具有可執行父類與子類功能
for album in allAlbums {
    print(album.getPerformance())   //The studio album Taylor Swift sold lots
}                                   //The studio album Speak Now sold lots
                                    //The live album iTunes Live from SoHo sold lots


//:Converting types with typecasting
//大部分是 as?(optional downcasting) and as!(optional forced downcasting)
for album in allAlbums {
    print(album.getPerformance())

    if let studioAlbum = album as? StudioAlbum {        //The studio album Taylor Swift sold lots
        print(studioAlbum.studio)                       //The Castles Studios
                                                        //The studio album Speak Now sold lots
                                                        //Aimeeland Studio
        
    } else if let liveAlbum = album as? LiveAlbum {     //The live album iTunes Live from SoHo sold lots
        print(liveAlbum.location)                       //New York
    }
}

//:Converting common types with initializers
let number = 5
let text = String(number)
print(text)

//:
//: [Next](@next)
