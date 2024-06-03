//
//  DetailViewController.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    var webView: WKWebView!
    var detailItem: Petition?
    
    //在viewDidLoad之前讓Controller的view是 WKWebView
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 200%; } </style>
        </head>
        <body>
        \(detailItem.body)
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)  //load我們自定義的html
    }
}

/*
 尺寸同手機寬
 <meta name="viewport" content="width=device-width, initial-scale=1">

 字體200%
 <style> body { font-size: 200%; } </style>

 */
