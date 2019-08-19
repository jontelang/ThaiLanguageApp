//
//  TLAInformationViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/19/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To be a SIMPLE controller that ONLY exist to control the animation
/// timings and colors of the screen.
final class TLAInformationViewController: UIViewController {
    
    /// The mainView is the actual view we want to display.
    var mainView: UIView
    
    /// The rootView is simply a reference to the UIViewControllers self.view
    /// so that we are able to use TLATheme to set it to its various states.
    var rootView: TLAView
    
    init(with mainView: UIView) {
        self.mainView = mainView
        self.rootView = TLAView() // I make it a TLAView only so it is themable
        
        super.init(nibName: nil, bundle: nil)
        
        view = rootView
        rootView.theme = TLATheme.Information.Screen.Background.AnimatedOut()
        rootView.addSubview(mainView)
        mainView.pinTo(view, padding: UIEdgeInsets(top: 100, left: 20, bottom: 60, right: 20))
        mainView.transform = .init(translationX: 0, y: 200)
        
        // TODO: Make UIView themable, it would allow this to be themable without
        // making the property a TLAView to begin with (or a cast).
        mainView.layer.cornerRadius = 4.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, // TODO: Make these into constants?
            delay: 0,
            usingSpringWithDamping: 0.65,
            initialSpringVelocity: 1.0,
            options: .curveEaseInOut,
            animations: {
                self.rootView.theme = TLATheme.Information.Screen.Background.AnimatedIn()
                self.mainView.transform = .identity
        }, completion: nil)
    }
    
    // MARK: Required
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
