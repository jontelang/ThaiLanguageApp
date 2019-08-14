//
//  TLAInformationTextDisplayable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a paragraph with text in an 'information' view
struct TLAInformationTextDisplayable {
    var text: String
}

extension TLAInformationTextDisplayable: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLALabel()
        label.text = text
        label.theme = TLATheme.Information.Text()
        return label
    }
}
