//
//  ViewController.swift
//  project12
//
//  Created by 邱慧珊 on 2024/10/2.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UserFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Bob Yin", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDictionary")
        
        let saveInterger = defaults.integer(forKey: "Age")
        let saveBoolean = defaults.bool(forKey: "UserFaceID")
        
        let saveArray = defaults.object(forKey: "SaveArray") as? [String] ?? [String]()
        let saveDictionary = defaults.object(forKey: "SavedDictionary") as? [String: String] ?? [String: String]()
        //let saveArray2 = defaults.array(forKey: <#T##String#>)
    }


}

