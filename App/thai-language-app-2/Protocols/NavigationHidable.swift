//
//  NavigationHidable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/26/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import Foundation

// The purpose of this protocol is to allow UIViewControllers to have an optional
// property letting 'someone outside' know that they /prefers/ to be presented
// without the navigation bar. The decision is not up to them though, hint: 'prefers'
protocol NavigationHidable {
    
    // I was intending to create a default implementation here, but as this
    // defaults to false anyway, it might not be needed.
    // TODO: How do I make this settable without overriding?
    var prefersNavigationBarHidden: Bool { get }
    
}
