//
//  Petitions.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import Foundation

struct Petitions: Codable {
    var results: [Petition]
}


/*
最外層Json資料結構是
 
 {
    metadata: {3個屬性}
    results: [100個元素]
 }
 */
