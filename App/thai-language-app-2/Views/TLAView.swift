//
//  TLAView.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/13/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// The purpose of this view is to provide a themeable base view
class TLAView: UIView {
    
    var theme: TLATheme? {
        didSet {
            backgroundColor = theme?.themeBackgroundColor
            layer.cornerRadius = theme?.themeRadius ?? 0.0
            alpha = theme?.themeAlpha ?? 1.0
        }
    }
    
}

