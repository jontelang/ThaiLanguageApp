//
//  TLACharactersListModuleBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

protocol TLACharactersListModuleOutput: class {
    func routeToDetail(for character: TLACharacter)
}

final class TLACharactersListModuleBuilder {
    
    static func build(for coordinator: TLACharactersListModuleOutput) -> UIViewController {
        let displayRows = TLACharactersStackviewModelProvider.rows()
        let tapHandler = TLACharactersModuleTapHandler()
        tapHandler.coordinator = coordinator
        let stackview = TLAStackviewBuilder.buildView(displayRows: displayRows, tapHandler: tapHandler)
        
        let viewController = UIViewController()
        viewController.view = stackview
        return viewController
    }
    
}
