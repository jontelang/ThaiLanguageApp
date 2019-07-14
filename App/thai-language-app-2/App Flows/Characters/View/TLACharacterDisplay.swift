//
//  TLACharacterDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// This is a wrapper to be able to display a TLACharacter model in a TLAStackView
struct TLACharacterDisplay: TLAStackViewDisplayable {
    var character: TLACharacter
    
    func view() -> UIView {
        let label = TLACharacterDisplayLabel(with: character)
        label.theme = TLATheme.Characters.Cell.CharacterView()
        return label
    }
}
