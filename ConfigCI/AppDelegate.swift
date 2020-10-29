//
//  AppDelegate.swift
//  ConfigCI
//
//  Created by Khoa Vo T.A. on 10/26/20.
//  Copyright © 2020 Khoa Vo T.A. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        configFirebase()
        configWindow()
        return true
    }

    private func configWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        window?.backgroundColor = .clear
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

    private func configFirebase() {
        FirebaseApp.configure()
    }
}
