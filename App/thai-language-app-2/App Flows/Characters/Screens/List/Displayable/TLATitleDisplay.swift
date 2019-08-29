//
//  TLATitleDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a simple title. This used to be a generic class, hence
/// the nice generic name, however with the addition of a colored border it became
/// more specific to the 'characters list'.
/// TODO: This could be fixed by a proper themeing engine I think?
struct TLATitleDisplay {
    var text: String
}

extension TLATitleDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLALabel()
        label.text = text
        label.theme = TLATheme.Characters.List.Sections.Title.Text()

        let border = TLAView() // Make themable?
        label.addSubview(border)
        border.pinBottomTo(label)
        border.pinXAxisTo(label)
        border.pinHeight(2)
        border.theme = TLATheme.Characters.List.Sections.Title.Border()
        
        return label
    }
}
