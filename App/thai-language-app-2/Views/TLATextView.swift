//
//  TLATextView.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/23/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLATextView: UITextView {
    
    var theme: TLATheme? {
        didSet {
            textColor = theme?.themeTextColor
            font = theme?.themeFont
            backgroundColor = theme?.themeBackgroundColor
        }
    }
    
}
