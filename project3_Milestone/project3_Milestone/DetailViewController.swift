//
//  DetailViewController.swift
//  project3_Milestone
//
//  Created by Bob on 2024/5/3.
//

import UIKit
import LinkPresentation

class DetailViewController: UIViewController {

    
    @IBOutlet weak var flagImageView: UIImageView!
    
    var img = UIImage()
    var imgArray = [String]()
    var index = 0
    
    @IBAction func tappedShareBtn(_ sender: UIButton) {
        let shareVC = UIActivityViewController(activityItems: [img, self], applicationActivities: .none)
        shareVC.popoverPresentationController
        present(shareVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagImageView.backgroundColor = .systemGray4
        flagImageView.image = img
    }
}

extension DetailViewController: UIActivityItemSource {
        
    //遵從Protocol UIActivityItemSource，需要的函式
    func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return ""
    }

    //遵從Protocol UIActivityItemSource，需要的函式
    func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
        return nil
    }

    
    func activityViewControllerLinkMetadata(_ activityViewController: UIActivityViewController) -> LPLinkMetadata? {
        let image = UIImage(named: imgArray[index])!
        let imageProvider = NSItemProvider(object: image)
        let metadata = LPLinkMetadata()
        metadata.imageProvider = imageProvider
        metadata.title = imgArray[index]
        return metadata
    }
    
}
