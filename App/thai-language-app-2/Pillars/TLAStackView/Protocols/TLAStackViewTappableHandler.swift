//
//  TLAStackViewTappableHandler.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/3/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

/// This protocol allows an object to properly handle tap events from objects
/// conforming to TLAStackViewTappable. When TLAStackViewTappable are built they
/// require an object conforming to this protocol to be set as their 'tappableHandler'
/// object which is defined in that protocol.
@objc protocol TLAStackViewTappableHandler {
    
    /// Tells the handler that it was tapped, with data
    func tapped(from source: TLAStackViewTappable, with data: Any)
    
    /// Tells the handler that it was tapped, without data. In this method you
    /// can still identify what was tapped through the source.tappableIdentifier
    func tapped(from source: TLAStackViewTappable)
}
