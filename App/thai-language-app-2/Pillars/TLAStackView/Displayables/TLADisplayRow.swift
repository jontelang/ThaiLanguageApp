//
//  TLADisplayRow.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// This structs purpose is to display one or more TLAStackViewDisplayable objects
/// in a "row" style, i.e. it adds them from left to right.
struct TLADisplayRow {
    var height: CGFloat?
    var items: [TLAStackViewDisplayable]
    
    init(height: CGFloat? = nil, items: [TLAStackViewDisplayable]) {
        self.height = height
        self.items = items
    }
}
