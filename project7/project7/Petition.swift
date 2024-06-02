//
//  Petition.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}

/*
results資料結構是
 {
    metadata: {3個屬性}
    results: [
    0: {
        type: ""
        title: ""
        body: ""
    }
    1: {}
    ....
    99: {}
    ]
 }
 */
