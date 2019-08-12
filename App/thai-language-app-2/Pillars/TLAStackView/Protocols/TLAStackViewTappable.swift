//
//  TLAStackViewTappable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/3/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

/// This protocol should be conformed to if you have a TLAStackViewDisplayable
/// that also wants to be tappable when built by a TLAStackViewBuilder class
@objc protocol TLAStackViewTappable {
    
    /// At the moment the objects conforming to TLAStackViewTappable need to keep
    /// their own internal references to the tappableHandler.
    ///
    /// Note: I could implement something like associated objects, maybe?
    var tappableHandler: TLAStackViewTappableHandler? { get set }
    
    /// This -can- be used to uniquely identify a tapped 'TLAStackViewTappable'
    /// entry. If you do not need it, you may return an empty string.
    ///
    /// Note: If this is ONLY required in one screen, we may consider simply
    /// adding a string to that particular object, to not have to implement this
    /// getter in many different classes without it being used.
    var tappableIdentifier: String { get }
    
    /// This method is supposed to only be implemented to pass forward the data
    /// of the object conforming to this protocol into the functions defined in
    /// the protocol TLAStackViewTappableHandler
    func tapped()
}
