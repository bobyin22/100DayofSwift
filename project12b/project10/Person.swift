//
//  Person.swift
//  project10
//
//  Created by Yin Bob on 2024/9/13.
//

import UIKit

// 繼承Codable協議，不相容Objectivce-C
// 繼承NSCoding協議才相容Objectivce-C
class Person: NSObject, Codable {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
}
