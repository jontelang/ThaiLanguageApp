//
//  TLADebugStackViewTappableHandler.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/6/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

/// Purpose: Placeholder tap handler to use when you don't have a module-specific
/// handler implemented yet. Essentially a no op.
class TLADebugStackViewTappableHandler: TLAStackViewTappableHandler {
    func tapped(from source: TLAStackViewTappable, with data: Any) { }
    func tapped(from source: TLAStackViewTappable) { }
}
