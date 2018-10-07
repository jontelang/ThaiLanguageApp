//
//  TLALabel.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// The purpose of this custom label is to set the UIFont to the proper font.
/// We don't set it as an appearance proxy as that is used to set the 'fallback'
/// font, if this one fails. Due to inconsistencies in the NotoSans thai/normal
/// fonts, this was a way to maybe fix it.
class TLALabel: UILabel {
    
    var theme: TLATheme? {
        didSet {
            textColor = theme?.themeTextColor
            font = theme?.themeFont
            textAlignment = theme!.themeTextAlignment
            numberOfLines = theme!.themeNumberOfLines
            adjustsFontSizeToFitWidth = theme!.themeAdjustFontToSize
            self.adjustsFontSizeToFitWidth = theme!.themeAdjustFontToSize
        }
    }
    
}