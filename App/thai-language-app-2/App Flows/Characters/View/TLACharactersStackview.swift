//
//  TLACharactersStackview.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/13/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

enum displayType {
    case consonant
    case vowel
    case filler // fill one spot
    case spacer // vertical space
    case title
    case subtitle
}

struct DisplayData {
    var title: String?
    var subtitle: String?
    var altTitle: String?
    var type: displayType
    
    init(title: String? = nil, subtitle: String? = nil, altTitle: String? = nil, type: displayType) {
        self.title = title
        self.subtitle = subtitle
        self.altTitle = altTitle
        self.type = type
    }
}

struct DisplayRow {
    var height: CGFloat?
    var items: [DisplayData]
    
    init(height: CGFloat? = nil, items: [DisplayData]) {
        self.height = height
        self.items = items
    }
}
