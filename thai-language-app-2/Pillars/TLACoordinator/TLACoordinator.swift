//
//  TLACoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACoordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinator: TLACoordinator?
    
    /// Each TLACoordinator talks to its parent coordinator through a delegate
    public var delegate: Any?
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start(){
        // Stubbed method
    }
}
