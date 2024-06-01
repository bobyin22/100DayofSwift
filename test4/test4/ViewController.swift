//
//  ViewController.swift
//  test4
//
//  Created by Bob on 2024/5/14.
//

import UIKit

class ViewController: UITableViewController {
    
    var websites = ["google.com", "hackingwithswift.com", "XXOO"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebDetail") as? WebDetailViewController {
            vc.title = websites[indexPath.row]
            vc.selectedLinkIndex = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}





