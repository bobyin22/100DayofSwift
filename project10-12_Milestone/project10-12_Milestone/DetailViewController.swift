//
//  DetailViewController.swift
//  project10-12_Milestone
//
//  Created by 邱慧珊 on 2024/10/16.
//

import UIKit

class DetailViewController: UIViewController {

    var image:UIImage?
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = image {
            imageView.image = image
        }
    }
    

}
