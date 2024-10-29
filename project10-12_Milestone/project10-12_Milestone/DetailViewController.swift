//
//  DetailViewController.swift
//  project10-12_Milestone
//
//  Created by 邱慧珊 on 2024/10/16.
//

import UIKit

protocol PassNameDelegate: AnyObject {
    func passName(with name: String, indexPath: IndexPath)
}

class DetailViewController: UIViewController {

    var image:UIImage?
    @IBOutlet weak var imageView: UIImageView!
    
    weak var delegate: PassNameDelegate?
    var indexPath: IndexPath?
    
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
        popAlert()
    }
    
    func popAlert() {
        let controller = UIAlertController(title: "命名", message: "請輸入你想要此張照片的名字", preferredStyle: .alert)
        controller.addTextField { textField in
           textField.placeholder = "請輸入照片名"
            textField.keyboardType = UIKeyboardType.default
        }
        let okAction = UIAlertAction(title: "OK", style: .default) { [unowned controller] _ in
           let name = controller.textFields?[0].text
           print(name)
            guard let indexPath = self.indexPath else { return }
            self.delegate?.passName(with: name!, indexPath: indexPath)
        }
        controller.addAction(okAction)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        controller.addAction(cancelAction)
        present(controller, animated: true)
    }

}
