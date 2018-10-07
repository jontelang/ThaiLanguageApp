//
//  TLACollectionView.swift
//  thai-language-app-2
//
//  Created by Jonathan on 10/7/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACollectionView: UICollectionView {
    
    var theme: TLATheme? {
        didSet {
            backgroundColor = theme?.themeBackgroundColor
        }
    }
    
}

