//
//  TLACharactersDetailModuleTapHandler.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/12/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

final class TLACharactersDetailModuleTapHandler: TLAStackViewTappableHandler {
    
    weak var coordinator: TLACharactersDetailModuleOutput?
    
    func tapped(from source: TLAStackViewTappable, with data: Any) {
        // No need to implement
    }
    
    func tapped(from source: TLAStackViewTappable) {
        coordinator?.tappedProperty(with: source.tappableIdentifier)
    }
}
