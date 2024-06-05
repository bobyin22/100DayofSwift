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
    
    ///參考文章：https://medium.com/frochu/html-meta-viewport-setting-69fbb06ed3d8
    //可縮放
//  <meta name="viewport" content="width=device-width, initial-scale=1">
    
    //不可縮放
//  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" >
    
    //背景顏色
//    @media screen and (max-width: 900px){
//        body { background: pink;}
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 300%; }
        @media screen and (max-width: 900px){
            body { background: pink;}
        }
        </style>
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
