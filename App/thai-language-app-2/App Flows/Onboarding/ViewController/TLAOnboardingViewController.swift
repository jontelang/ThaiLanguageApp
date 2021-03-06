//
//  TLAOnboardingViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

protocol TLAOnboardingViewControllerDelegate: class {
    
    func didPressContinue(fromController: TLAOnboardingViewController)
    
}

class TLAOnboardingViewController: UIViewController {

    public weak var delegate: TLAOnboardingViewControllerDelegate?
    
    @IBOutlet weak var labelWelcome: TLALabel!
    @IBOutlet weak var buttonContinue: TLAButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelWelcome.theme = TLATheme.Onboarding.Label.Title()
        
        buttonContinue.addTarget(self, action: #selector(continueOnboarding), for: UIControlEvents.touchUpInside)
        buttonContinue.theme = TLATheme.Onboarding.Button.Continue()
    }

    @objc func continueOnboarding() {
        delegate?.didPressContinue(fromController: self)
    }
}
