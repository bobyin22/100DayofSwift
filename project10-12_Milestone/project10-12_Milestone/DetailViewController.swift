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
        
        view.backgroundColor = .white
        let captionBtn : UIBarButtonItem = UIBarButtonItem(title: "Caption",
                                                           style: UIBarButtonItem.Style.plain,
                                                           target: self,
                                                           action: #selector(tapCaptionBtn))
        navigationItem.rightBarButtonItem = captionBtn
        
        if let image = image {
            imageView.image = image
        }
    }
    
    @objc
    func tapCaptionBtn() {
        print("123")
    }
    

}
