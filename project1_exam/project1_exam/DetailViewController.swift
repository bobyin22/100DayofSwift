//
//  DetailViewController.swift
//  project1_exam
//
//  Created by Bob on 2024/4/28.
//

import UIKit

class DetailViewController: UIViewController {

    var titleMessage: String?
    var receiveImageData: String?
    
    @IBOutlet weak var photoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let titleMessage = titleMessage {
            navigationItem.title = titleMessage
        }
        
        //VC2畫面出來再load資料
        if let receiveImageData = receiveImageData {
            photoImage.image = UIImage(named: receiveImageData)
        }
    }
}
