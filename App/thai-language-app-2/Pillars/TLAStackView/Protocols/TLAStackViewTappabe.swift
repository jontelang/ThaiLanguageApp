//
//  TLAStackViewTappabe.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/3/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

/// This protocol should be conformed to if you have a TLAStackViewDisplayable
/// that also wants to be tappable when built by a TLAStackViewBuilder class
@objc protocol TLAStackViewTappable {
    func tapped()
}
