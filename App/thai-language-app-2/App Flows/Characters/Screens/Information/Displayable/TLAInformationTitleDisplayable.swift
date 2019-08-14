//
//  TLAInformationTitleDisplayable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a title in an 'information' view
struct TLAInformationTitleDisplayable {
    var title: String
}

extension TLAInformationTitleDisplayable: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLALabel()
        label.text = title
        label.theme = TLATheme.Information.Title()
        return label
    }
}
