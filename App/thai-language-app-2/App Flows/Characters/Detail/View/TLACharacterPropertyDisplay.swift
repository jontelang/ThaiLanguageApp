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
    
    init(propertyName: String, propertyValue: String) {
        self.propertyName = propertyName
        self.propertyValue = propertyValue
    }
}

extension TLACharacterPropertyDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let stackView = UIStackView()
        stackView.accessibilityIdentifier = "propertyDisplayContainerStack"
        stackView.axis = .vertical
        
        let nameLabel = TLALabel()
        nameLabel.text = propertyName
        nameLabel.accessibilityIdentifier = "nameLabel"
        nameLabel.theme = TLATheme.Characters.Detail.Property.Title()
        stackView.addArrangedSubview(nameLabel)
                
        let valueLabel = TLALabel()
        valueLabel.text = propertyValue
        valueLabel.theme = TLATheme.Characters.Detail.Property.Text()
        valueLabel.accessibilityIdentifier = "valueLabel"
        stackView.addArrangedSubview(valueLabel)
        
        let view = UIView()
        view.addSubview(stackView)
        view.accessibilityIdentifier = "propertyDisplayContainerview"
        stackView.pinTo(view, padding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
                
        return view
    }
}
