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
        performSelector(inBackground: #selector(fetchJson), with: nil)
    }
    
    
    @objc func fetchJson() {
        //let urlString = "https://api.whitehouse.gov/va/petitions.json?limit=100"
        //let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        
        let urlString: String
        
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            //urlString = "https://api.whitehouse.gov/va/petitions.json?signatureCountFloor=10000&limit=100"
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {  //把url型別 轉型成 Data型別
                parse(json: data)
                return              //有解析成功跳出viewDidLoad，不走showError函式
            }
        }
                        
        //無解析成功，viewDidLoad繼續往下走showError函式
        performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
    }
    
    @objc func showError() {
        let ac = UIAlertController(title: "載入失敗", message: "網路可能有問題，請檢查，再重試", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
        
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results   //轉型完後的json賦值給陣列
            tableView.performSelector(onMainThread: #selector(UITableView.reloadData), with: nil, waitUntilDone: false)
        } else {
            performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()             //DetailVC是純code，所以不用storyboad push推出
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

