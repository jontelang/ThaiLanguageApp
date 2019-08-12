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
        let charactersListViewController = TLACharactersListModuleBuilder.build(for: self)
        navigationController.show(charactersListViewController, sender: nil)
    }
}

extension TLACharactersCoordinator: TLACharactersListModuleOutput {
    func routeToDetail(for character: TLACharacter) {
        let charactersDetailViewController = TLACharacterDetailModuleBuilder.build(for: self, with: character)
        navigationController.show(charactersDetailViewController, sender: nil)
    }
}
