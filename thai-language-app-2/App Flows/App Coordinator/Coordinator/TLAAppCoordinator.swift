//
//  TLAAppCoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAAppCoordinator: TLACoordinator {

    override func start() {
        let onboardingViewController = TLAOnboardingViewController.instantiateFromStoryboard() as! TLAOnboardingViewController
        onboardingViewController.delegate = self
        navigationController.setViewControllers([onboardingViewController], animated: false)
        
        // TEMPORARY CODE - to get past the initial screen automatically
        didPressContinue(fromController: TLAOnboardingViewController())
    }
    
}

extension TLAAppCoordinator: TLAOnboardingViewControllerDelegate {
    
    func didPressContinue(fromController: TLAOnboardingViewController) {
        let menuCoordinator = TLAMenuCoordinator(navigationController: navigationController)
        childCoordinator = menuCoordinator
        childCoordinator?.start()
    }
    
}
