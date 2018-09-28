//
//  AppDelegate.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

@UIApplicationMain
class TLAAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: TLAAppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Then setup some appearances
        setupAppearance()
        
        // Create a UINavigationController that will be the main controller
        // throughout the application lifetime.
        let navigationController = TLANavigationController.init()
        
        // This fixes views showing up below the navigation bar
        navigationController.navigationBar.isTranslucent = false
        
        // Attach the navigation controller to the app window
        window = UIWindow.init()
        window?.rootViewController = navigationController
        
        // Then the proper coordinator we will be using
        appCoordinator = TLAAppCoordinator(navigationController: navigationController)
        appCoordinator?.start()
        
        // And present it all on the screen
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func setupAppearance() {
        // Set the tintcolor as a default for items
        window?.tintColor = UIColor.appTintColor()
    }

}

