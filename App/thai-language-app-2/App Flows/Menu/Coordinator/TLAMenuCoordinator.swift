//
//  TLAMenuCoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAMenuCoordinator: TLACoordinator {

    override func start() {
        let menuViewController = TLAMenuViewController.instantiateFromStoryboard() as! TLAMenuViewController
        menuViewController.delegate = self
        navigationController.setViewControllers([menuViewController], animated: true)
        
        didPressCharacters(fromController: menuViewController)
    }
    
}

extension TLAMenuCoordinator: TLAMenuViewControllerDelegate {
    
    func didPressSkills(fromController: TLAMenuViewController) {
        let skillsCoordinator = TLASkillsCoordinator(navigationController: navigationController)
        childCoordinator = skillsCoordinator
        childCoordinator?.start()
    }
    
    func didPressCharacters(fromController: TLAMenuViewController) {
        let charactersCoordinator = TLACharactersCoordinator(navigationController: navigationController)
        childCoordinator = charactersCoordinator
        childCoordinator?.start()
    }
    
    func didPressContact(fromController: TLAMenuViewController) {
        let contactViewController = TLAContactViewController.instantiateFromStoryboard() as! TLAContactViewController
        navigationController.show(contactViewController, sender: nil)
    }
    
    func didPressSettings(fromController: TLAMenuViewController) {
        let settingsViewController = TLASettingsViewController.instantiateFromStoryboard() as! TLASettingsViewController
        navigationController.show(settingsViewController, sender: nil)
    }
    
    func didPressLessons(fromController: TLAMenuViewController) {
        print("didPressLessons fromController: ", fromController)
    }
    
}
