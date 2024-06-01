//
//  UIAlertController+Extension.swift
//  project2_exam
//
//  Created by Bob on 2024/5/1.
//

import Foundation
import UIKit

extension UIViewController {
    func myAlert(title: String, message: String, from controller: UIViewController, actionTitle: String, handler: @escaping () -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: actionTitle, style: .default, handler: { action in
            handler()
        }))
        
        controller.present(alert, animated: true)
    }
}
