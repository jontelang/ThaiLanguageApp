//
//  TLACharacterDetailModuleBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/4/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

final class TLACharacterDetailModuleBuilder {
    
    static func build(for coordinator: TLACharactersCoordinator, with character: TLACharacter) -> UIViewController {
        let viewController = UIViewController()
        let displayRows = TLACharactersDetailStackviewModelProvider.rows(for: character)
        let tapHandler = TLACharactersDetailModuleTapHandler()
        tapHandler.coordinator = coordinator
        let stackView = TLAStackviewBuilder.buildView(displayRows: displayRows,
                                                      tapHandler: tapHandler)
        viewController.view = stackView
        return viewController
    }
}
