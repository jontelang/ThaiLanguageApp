//
//  TLACharacterDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// This is a wrapper to be able to display a TLACharacter model in a TLAStackView
class TLACharacterDisplay {
    var character: TLACharacter
    private var _tappableDestination: TLAStackViewTappableDestination?
    
    init(character: TLACharacter) {
        self.character = character
    }
}

extension TLACharacterDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLACharacterDisplayLabel(with: character)
        label.theme = TLATheme.Characters.Cell.CharacterView()
        return label
    }
}

@objc extension TLACharacterDisplay: TLAStackViewTappable {
    var tappableDestination: TLAStackViewTappableDestination? {
        get { return _tappableDestination }
        set { _tappableDestination = newValue }
    }
    
    func tapped() {
        if let destination = _tappableDestination {
            destination.tapped(from: self, with: character)
        }
    }
}
