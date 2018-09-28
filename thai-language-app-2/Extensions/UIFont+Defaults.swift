//
//  UIFont+Defaults.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

extension UIFont {
    
    class func appRegularFont() -> UIFont {
        return UIFont(name: "NotoSans-Regular", size: UIFont.systemFontSize)!
    }
    
    class func appBoldFont() -> UIFont {
        return UIFont(name: "NotoSans-Bold", size: UIFont.systemFontSize)!
    }
    
    class func appRegularThaiFont() -> UIFont {
        return UIFont(name: "NotoSerifThai-Regular", size: UIFont.systemFontSize)!
    }
    
}
