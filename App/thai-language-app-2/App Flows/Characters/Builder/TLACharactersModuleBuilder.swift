//
//  TLACharactersModuleBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

final class TLACharactersModuleBuilder {
    
    static func build() -> UIViewController {
        let viewController = UIViewController()
        let displayRows = TLACharactersStackviewModelProvider.buildRows()
        let stackview = TLAStackviewBuilder.buildView(displayRows: displayRows)
        viewController.view = stackview
        return viewController
    }
    
}