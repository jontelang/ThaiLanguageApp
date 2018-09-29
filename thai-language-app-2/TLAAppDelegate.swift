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
        
        // Then setup some appearances
        setupAppearance()
        
        return true
    }
    
    func setupAppearance() {
        // Set the tintcolor as a default for items
        window?.tintColor = UIColor.appTintColor()
        
        // Removes the shadow. The 'setShadowImage' doesn't work unless we also set
        // the backgroundImage to an empty image. For one reasons or another.
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.setBackgroundImage(UIImage.init(), for: UIBarMetrics.default)
        navigationBarAppearance.shadowImage = UIImage.init()
        
        // Nice rounded edges on the whole app. At least on non iPhone X devices
        window?.layer.cornerRadius = 4.0
        window?.layer.masksToBounds = true
    }

}

