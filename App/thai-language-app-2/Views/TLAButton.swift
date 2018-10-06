//
//  TLAButton.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// The purpose of this custom button is to make sure we use our nice fonts.
/// TODO: Check what happens when we use both thai and latin characters
class TLAButton: UIButton {
    
    var theme: TLATheme? {
        didSet {
            titleLabel?.font = theme?.themeFont
            setTitleColor(theme?.themeTextColor, for: UIControlState.normal)
            backgroundColor = theme?.themeBackgroundColor
            layer.cornerRadius = theme?.themeRadius ?? 0.0
            
            // TODO: Is this a proper way of doing this?
            setImage(theme?.themeImage ?? nil, for: UIControlState.normal)
        }
    }
        
}
