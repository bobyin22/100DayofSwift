//
//  AppDelegate.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //建立第二個VC
        if let tabBarController = window?.rootViewController as? UITabBarController {   //確定root是UITabBarController
            let storyboard = UIStoryboard(name: "Main", bundle: nil)                    //找到Storyboard Main檔案
            let vc = storyboard.instantiateViewController(withIdentifier: "NavController")  //找到Main檔案裡面的NavController
            vc.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 1)           //建立Tabbar tag1
            tabBarController.viewControllers?.append(vc)                                //加入Tabbar的list中
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

