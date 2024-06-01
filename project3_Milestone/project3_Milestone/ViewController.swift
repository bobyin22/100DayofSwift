//
//  ViewController.swift
//  project3_Milestone
//
//  Created by Bob on 2024/5/2.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    //let detailVC = DetailViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Codin from scratch"
        
        let fm = FileManager.default
        print("fm：\(fm)")
        /*
         let sandboxDocumentURL = fm.urls(for: .documentDirectory, in: .userDomainMask)[0]
         print("sandboxDocumentURL：\(sandboxDocumentURL)")
         sandboxDocumentURL：file:///Users/joy/Library/Developer/CoreSimulator/Devices/363B9CC1-23BC-4817-BC17-8359F5E98631/data/Containers/Data/Application/6E088AC9-2081-4E30-B544-1073ABA8CC83/Documents/
         */
        
        /*
         path:/Users/joy/Library/Developer/CoreSimulator/Devices/363B9CC1-23BC-4817-BC17-8359F5E98631/data/Containers/Bundle/Application/BF2696A7-6767-4738-AF5C-DB196B3903C1/project3_Milestone.app
         */
        let path = Bundle.main.resourcePath!
        print("path: \(path)")
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        print("itmes: \(items)")
        
        for item in items {
            if item.contains("@3x.png") {
                pictures.append(item)
            }
        }
        print("pictures：\(pictures)")
        
//        for picture in pictures {
//            if picture.contains("0049") {
//                print("picture: \(picture)")
//                UIImage(named: picture)?.scale(newWidth: 1024)
//            }
//        }
        
    }

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        
        cell.imageView?.image = UIImage(named: pictures[indexPath.row])
        cell.imageView?.layer.borderWidth = 0.3
        cell.imageView?.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            vc.img = UIImage(named: pictures[indexPath.row])!
            vc.imgArray = pictures
            vc.index = indexPath.row
            self.navigationController?.pushViewController(vc, animated: true) //從右方推出畫面
            
            //present(vc, animated: true) //從下面推出畫面
        }
    }
    
    
}

