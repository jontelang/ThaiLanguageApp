//
//  UIViewController+Storyboard.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /// Instanisates a UIViewController from the initial view controller from
    /// a .storyboard file with the exact same name. For example:
    /// the class XXXUIViewController must have a XXXUIViewController.storyboard
    /// with a single XXXUIViewController in it.
    class func instantiateFromStoryboard() -> UIViewController? {
        let storyboardName = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let initialViewController = storyboard.instantiateInitialViewController()
        
        if initialViewController == nil {
            fatalError("'\(storyboardName).storyboard' does not contain an initial UIViewController")
        }
        
        return initialViewController
    }
    
}
