//
//  AppDelegate.swift
//  ReferenceArch
//
//  Created by Juan Jose Rebollo on 15/12/2021.
//

import UIKit
import BaseModule

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var coordinator: Root.Coordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navController = BaseNavigationController()
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .purple

        UINavigationBar.appearance().tintColor = .systemPink
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        let coordinator = Root.Coordinator(navigationController: navController)
        self.coordinator = coordinator
        self.coordinator?.start()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
}

