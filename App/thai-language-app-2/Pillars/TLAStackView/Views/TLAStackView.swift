//
//  TLAStackView.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/3/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose is to keep the display rows alive, so that the ones we need alive
/// (TLAStackViewTappable/Displayable) doesn't get deallocated instantly
class TLAStackView: UIStackView {
    var storedRows: [TLADisplayRow]?
}
