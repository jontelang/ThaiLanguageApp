//
//  TLACharacterPropertyDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/4/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a property of a character in a stackview
final class TLACharacterPropertyDisplay {
    var propertyName: String
    var propertyValue: String
    
    // This is just an internal var made for the 'TLAStackViewTappable' protocol
    private var _tappableHandler: TLAStackViewTappableHandler?
    private var _tappableIdentifier: String
    
    init(propertyName: String, propertyValue: String, propertyIdentifier: String) {
        self.propertyName = propertyName
        self.propertyValue = propertyValue
        _tappableIdentifier = propertyIdentifier
    }
}

extension TLACharacterPropertyDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        
        let nameLabel = TLALabel()
        nameLabel.text = propertyName
        nameLabel.theme = TLATheme.Characters.Detail.Property.Title()
        stackView.addArrangedSubview(nameLabel)
                
        let valueLabel = TLALabel()
        valueLabel.text = propertyValue
        valueLabel.theme = TLATheme.Characters.Detail.Property.Text()
        stackView.addArrangedSubview(valueLabel)
        
        let view = UIView()
        view.addSubview(stackView)
        stackView.pinTo(view, padding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
                
        return view
    }
}

extension TLACharacterPropertyDisplay: TLAStackViewTappable {
    var tappableIdentifier: String {
        return _tappableIdentifier
    }
    
    var tappableHandler: TLAStackViewTappableHandler? {
        get { return _tappableHandler }
        set { _tappableHandler = newValue }
    }
    
    func tapped() {
        if let handler = _tappableHandler {
            handler.tapped(from: self, with: "??")
        }
    }
}
