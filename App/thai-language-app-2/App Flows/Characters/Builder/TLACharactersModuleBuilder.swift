//
//  TLACharactersModuleBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

final class TLACharactersModuleBuilder {
    
    var d: [TLADisplayRow]?
    
    static func build() -> UIViewController {
        let viewController = UIViewController()
        let displayRows = TLACharactersStackviewModelProvider.buildRows()
        let stackview = TLAStackviewBuilder.buildView(displayRows: displayRows)
        viewController.view = stackview
        return viewController
        
//        TLADisplayCgaracter/Title/Etc should not need to have their own tap thing
//        stackview should be able to tap all views?
//           send what type, which data, what kinda displayable it is
//           send it TO a dedicated -per screen?- "interactor" object built here in the module builder
        
        
    }
    
}
