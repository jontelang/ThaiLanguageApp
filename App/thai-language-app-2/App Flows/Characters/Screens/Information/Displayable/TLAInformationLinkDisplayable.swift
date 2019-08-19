//
//  TLAInformationLinkDisplayable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a link in an 'information' view
final class TLAInformationLinkDisplayable {
    var link: String
    
    // This is just an internal var made for the 'TLAStackViewTappable' protocol
    private var _tappableHandler: TLAStackViewTappableHandler?
    private var _tappableIdentifier: String
    
    init(link: String, tappableIdentifier: String) {
        self.link = link
        _tappableIdentifier = tappableIdentifier
    }
}

extension TLAInformationLinkDisplayable: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLALabel()
        label.text = link
        label.theme = TLATheme.Information.Link.Text()
        
        let view = TLAView()
        view.theme = TLATheme.Information.Link.View()
        
        view.addSubview(label)
        label.pinTo(view, padding: UIEdgeInsets(top: 8, left: 10, bottom: 10, right: 40))
        
        return view
    }
}

extension TLAInformationLinkDisplayable: TLAStackViewTappable {
    var tappableIdentifier: String {
        return _tappableIdentifier
    }
    
    var tappableHandler: TLAStackViewTappableHandler? {
        get { return _tappableHandler }
        set { _tappableHandler = newValue }
    }
    
    func tapped() {
        if let handler = _tappableHandler {
            handler.tapped(from: self)
        }
    }
}
