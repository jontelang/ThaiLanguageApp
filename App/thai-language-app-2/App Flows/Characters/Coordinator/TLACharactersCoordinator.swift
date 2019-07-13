//
//  TLACharactersCoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 10/7/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACharactersCoordinator: TLACoordinator {
    
    override func start() {
        let charactersViewController = TLACharactersViewController()
        navigationController.show(charactersViewController, sender: nil)
    }
}

