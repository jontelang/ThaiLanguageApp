//
//  TLAStackviewBuilderConfiguration.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To provide the ability to inject configuration into the TLAStackviewBuilder
struct TLAStackviewBuilderConfiguration {
    /// Vertical spacing between the TLADisplayRows
    var rowSpacing: CGFloat = 1
    
    /// Horizontal padding between the encompassing UIScrollView and the actual
    /// TLAStackview that is returned.
    var internalInsets: UIEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
}
