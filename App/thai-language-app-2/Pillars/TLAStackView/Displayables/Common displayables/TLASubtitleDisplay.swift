//
//  TLASubtitleDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

struct TLASubtitleDisplay: TLAStackViewDisplayable {
    var text: String
    
    func view() -> UIView {
        let label = TLALabel()
        label.backgroundColor = .gray
        label.text = text
        label.theme = TLATheme.Characters.List.Sections.Subtitle()
        return label
    }
}
