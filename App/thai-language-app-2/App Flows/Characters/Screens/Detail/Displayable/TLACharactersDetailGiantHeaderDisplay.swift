//
//  TLACharactersDetailGiantDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/12/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

struct TLACharactersDetailGiantDisplay {
    var text: String
    var characterInsets: UIEdgeInsets
}

extension TLACharactersDetailGiantDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLALabel()
        label.text = text
        label.theme = TLATheme.Characters.Detail.Header.Text()
        label.textDrawInsets = characterInsets // Should this be in theme?
        return label
    }
}
