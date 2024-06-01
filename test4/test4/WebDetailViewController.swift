//
//  WebDetailViewController.swift
//  test4
//
//  Created by Bob on 2024/5/18.
//

import UIKit
import WebKit

class WebDetailViewController: UIViewController, WKNavigationDelegate {

    var selectedLinkIndex: Int?
    
    var websites = ["google.com", "hackingwithswift.com", "XXOO"]
    var webView: WKWebView!
    var progressView: UIProgressView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        //一個區間
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        //往前上一頁 (用)
        let back = UIBarButtonItem(title: "上一頁", style: .plain, target: webView, action: #selector(webView.goBack))
        //往後下一頁
        let forward = UIBarButtonItem(title: "下一頁", style: .plain, target: webView, action: #selector(webView.goForward))
        //重整按鈕
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        //進度條
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        let progressBtn = UIBarButtonItem(customView: progressView)
        
        //icon 加入到 下方Bar陣列
        toolbarItems = [progressBtn, spacer ,back ,forward ,refresh]
        //加入到下方Bar中
        navigationController?.isToolbarHidden = false
        
        //開啟KVO
        //參數1:觀察者是誰，參數2:要觀察誰，參數3:我們要什麼值，參數4:我們提供什麼
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
        let url = URL(string: "https://" + websites[selectedLinkIndex ?? 0])!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    
    @objc func openTapped() {
        let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .actionSheet)
        
        for website in websites {
            ac.addAction(UIAlertAction(title: website, style: .default, handler: openPage))
        }
        
        ac.addAction(UIAlertAction(title: "取消", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
    
    func openPage(action: UIAlertAction) {
        guard let actionTitle = action.title else { return }
        guard let url = URL(string: "https://" + actionTitle) else { return }
        webView.load(URLRequest(url: url))
    }
    
    func selectWebsite(link: String) {
        guard let url = URL(string: "https://" + link) else { return }
        webView.load(URLRequest(url: url))
    }
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    //關掉KVO
    //參數1:要觀察誰⭐️，參數2:要觀察誰，參數3:我們要什麼值，參數4:我們提供什麼⭐️
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webView.estimatedProgress)
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let url = navigationAction.request.url
        if let host = url?.host {
            for website in websites {
                if host.contains(website) {
                    decisionHandler(.allow) //如果有website loading
                    return
                }
            }
        }
        
        // URL 不被允许，顯示警告对话框
        let ac = UIAlertController(title: "Blocked", message: "前往的網址不合法", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
        decisionHandler(.cancel)    //失敗的話，不loading
    }

}


/*
 使用KVO分为三个步骤
 1.通过addObserver:forKeyPath:options:context:方法注册观察者，观察者可以接收keyPath属性的变化事件回调。
 
 2.在观察者中实现observeValueForKeyPath:ofObject:change:context:方法
 当keyPath属性发生改变后，KVO会回调这个方法来通知观察者。
 
 3.當观察者不需要監聽时，可以调用removeObserver:forKeyPath:方法将KVO移除。
 需要注意的是，调用removeObserver需要在观察者消失之前，否则会导致Crash。
 
 參考：https://segmentfault.com/a/1190000040991947
 */


/*
 KVO 蘋果文件：https://developer.apple.com/documentation/swift/using-key-value-observing-in-swift
 */
