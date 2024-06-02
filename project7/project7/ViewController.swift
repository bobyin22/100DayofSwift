//
//  ViewController.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import UIKit

class ViewController: UITableViewController {
    var petitions = [Petition]()      //陣列是裝所有資料，資料型別是Petition
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let urlString = "https://api.whitehouse.gov/va/petitions.json?limit=100"
        let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {  //把url型別 轉型成 Data型別
                parse(json: data)
            }
        }
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results   //轉型完後的json賦值給陣列
            tableView.reloadData()
        }
    }
    
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let petition = petitions[indexPath.row]     //陣列[indexPath.row]，拆解出個別元素，賦值給變數
        cell.textLabel?.text = petition.title       //每個row去吃值
        cell.detailTextLabel?.text = petition.body  //每個row去吃值
        return cell
    }
}

