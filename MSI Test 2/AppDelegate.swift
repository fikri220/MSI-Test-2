//
//  AppDelegate.swift
//  MSI Test 2
//
//  Created by Fikri Ihsan on 21/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let mainNavController = UINavigationController.init(rootViewController: SearchViewController.init())
        self.window?.rootViewController = mainNavController
        
        return true
    }

   

}

