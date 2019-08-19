//
//  TLAInformationModuleBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/12/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

@objc protocol TLAInformationModuleOutput: class {
    func dismissPls()
}

final class TLAInformationModuleBuilder {
    
    static func build(for coordinator: TLAInformationModuleOutput, with identifier: String) -> UIViewController {
        let displayRows = TLAInformationStackviewModelProvider.rows(for: identifier)
        
        // We need some spacing between the rows here to make some of them look
        // like actual \n as otherwise some paragraphs are smushed together. An
        // actual fix for this would be to either make all text/paragraphs individual
        // entries rather than using \n.
        var configuration = TLAStackviewBuilderConfiguration()
        configuration.rowSpacing = 10
        configuration.internalInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        let stackview = TLAStackviewBuilder.buildView(displayRows: displayRows,
                                                      tapHandler: TLADebugStackViewTappableHandler(),
                                                      configuration: configuration)
        
        // Build the actual view controller
        let viewController = TLAInformationViewController(with: stackview)
        
        // Make sure it is dismissable
        let cancelTap = UITapGestureRecognizer(target: coordinator, action: #selector(TLAInformationModuleOutput.dismissPls))
        viewController.view.addGestureRecognizer(cancelTap)
        
        return viewController
    }
    
}
