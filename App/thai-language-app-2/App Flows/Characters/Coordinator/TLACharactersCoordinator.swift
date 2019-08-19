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

extension TLACharactersCoordinator: TLACharactersDetailModuleOutput {
    func tappedProperty(with identifier: String) {
        // We manually map the identifier to the information identifier to make it
        // less "magical", where for example a tappable item inside the character
        // detail would have a `tappableIdentifier` that automatically would map to
        // a information identifier (as in the actual .json name). By doing it manually
        // we can make sure the files actually exist and we can also map tapping
        // an identifier like "NAME" to information "INFO_UPGRADE_TO_PRO" and so on.
        var informationIdentifier = ""
        switch identifier {
            case "NAME_IN_ENGLISH":
                informationIdentifier = "information_name_in_english"
            case "NAME_IN_THAI":
                informationIdentifier = "information_name_in_thai"
            default:
                fatalError("Error please add a route from the tappable item!")
                break
        }
        
        let informationViewController = TLAInformationModuleBuilder.build(for: self, with: informationIdentifier)
        informationViewController.modalPresentationStyle = .overCurrentContext
        navigationController.present(informationViewController, animated: false, completion: nil)
    }
}

extension TLACharactersCoordinator: TLAInformationModuleOutput {
    func dismissPls() { // TODO: Change name!
        navigationController.dismiss(animated: false, completion: nil)
    }
}
