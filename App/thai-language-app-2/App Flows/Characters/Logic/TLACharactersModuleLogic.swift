//
//  TLACharactersModuleLogic.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/3/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

final class TLACharactersModuleLogic: TLAStackViewTappableHandler {
    func tapped(from source: TLAStackViewTappable, with data: Any) {
        print("This is in the destination/interactor\nsource: \(source)\ndata: \(data)")
        
        if let character = data as? TLACharacter {
            switch character.type {
            case .vowel:
                print("push vowel with data \(character)")
            case .unknown:
                print("push unknown with data \(character)")
            case .consonant:
                print("push consonant with data \(character)")
            }
        }
    }
}
