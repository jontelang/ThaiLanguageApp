//
//  TLACharactersModuleTapHandler.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/3/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

final class TLACharactersModuleTapHandler: TLAStackViewTappableHandler {
    
    weak var coordinator: TLACharactersListModuleOutput?
    
    func tapped(from source: TLAStackViewTappable, with data: Any) {
        if let character = data as? TLACharacter {
            switch character.type {
            case .vowel, .consonant, .toneMarker:
                coordinator?.routeToDetail(for: character)
            case .unknown:
                print("unknown")
            }
        }
    }
    
    func tapped(from source: TLAStackViewTappable) {
        // No need to implement
    }
}
