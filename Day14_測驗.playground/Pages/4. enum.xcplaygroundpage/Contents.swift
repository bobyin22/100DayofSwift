//: [Previous](@previous)

import Foundation

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: WeatherType.cloud)  //回傳Hate


enum WeatherType2 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
func getHaterStatus2(weather: WeatherType2) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        print("哈哈\(speed)")
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus2(weather: WeatherType2.wind(speed: 5)) //回傳meh
                                                      //哈哈5


func knockKnock(_ caller: String?) {
    print("Who is there")
    
    switch caller {
    case .none:
        print("* 參數是nil *")
    case .some(let person):
        print(person)
    }
}

knockKnock(nil)         //Who is there
                        //* 參數是nil *

knockKnock("Orange")    //Who is there
                        //Orange
//: [Next](@next)
