//
//  TLASkillsCoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/16/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLASkillsCoordinator: TLACoordinator {

    override func start() {
        let skillsViewController = TLASkillsViewController.instantiateFromStoryboard() as! TLASkillsViewController
        skillsViewController.delegate = self
        navigationController.show(skillsViewController, sender: nil)
    }
}

extension TLASkillsCoordinator: TLASkillsViewControllerDelegate {
    
    func didPressReadingSpeed(fromController: TLASkillsViewController) {
        let readingSpeedCoordinator = TLAReadingSpeedCoordinator(navigationController: navigationController)
        childCoordinator = readingSpeedCoordinator
        childCoordinator?.start()
    }
    
    func didPressReadingPractice(fromController: TLASkillsViewController) {
        let readingPracticeCoordinator = TLAReadingPracticeCoordinator(navigationController: navigationController)
        childCoordinator = readingPracticeCoordinator
        childCoordinator?.start()
    }
    
}
