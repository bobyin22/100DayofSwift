//
//  ViewController.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import UIKit

class ViewController: UITableViewController {

    var petitions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "哈哈mian"
        cell.detailTextLabel?.text = "嘻嘻sub"
        return cell
    }
}

