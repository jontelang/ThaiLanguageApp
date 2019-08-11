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
    
    // This is just an internal var made for the 'TLAStackViewTappable' protocol
    private var _tappableHandler: TLAStackViewTappableHandler?
    
    init(character: TLACharacter) {
        self.character = character
    }
}

extension TLACharacterDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLACharacterDisplayLabel(with: character)
        label.theme = TLATheme.Characters.List.Character.View()
        return label
    }
}

@objc extension TLACharacterDisplay: TLAStackViewTappable {
    var tappableHandler: TLAStackViewTappableHandler? {
        get { return _tappableHandler }
        set { _tappableHandler = newValue }
    }
    
    func tapped() {
        if let handler = _tappableHandler {
            handler.tapped(from: self, with: character)
        }
    }
}
