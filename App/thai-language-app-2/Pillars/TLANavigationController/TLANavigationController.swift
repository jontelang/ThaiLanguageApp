//
//  TLANavigationController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/26/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLANavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        // https://stackoverflow.com/questions/24710258/no-swipe-back-when-hiding-navigation-bar-in-uinavigationcontroller
        interactivePopGestureRecognizer?.delegate = nil
    }
    
}

extension TLANavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let vc = viewController as? NavigationHidable {
            print("\(viewController) conforms to NavigationHidable and the value is \(vc.prefersNavigationBarHidden)")
            setNavigationBarHidden(vc.prefersNavigationBarHidden, animated: animated)
        }else{
            setNavigationBarHidden(false, animated: animated)
        }
    }
    
}
