//
//  TLASeparatorDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/5/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: Act as a 1pt high separator between two `TLADisplayRows`.
struct TLASeparatorDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let view = TLAView()
        view.theme = TLATheme.Characters.List.Sections.Separator()
        view.pinHeight(1.0)
        return view
    }
}
