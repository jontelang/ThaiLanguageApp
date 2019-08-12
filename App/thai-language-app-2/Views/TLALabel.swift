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
            backgroundColor = theme?.themeBackgroundColor
            textAlignment = theme!.themeTextAlignment
            numberOfLines = theme!.themeNumberOfLines
            adjustsFontSizeToFitWidth = theme!.themeAdjustFontToSize
        }
    }
    
    /// Used to offset the text if needed
    /// TODO: Should move to another class?
    var textDrawInsets: UIEdgeInsets = .zero
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, textDrawInsets))
    }
    
}
