//
//  TLACharacterLabel.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/13/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class CharacterLabel: TLAView {
    init(with data: DisplayData) {
        super.init(frame: .zero)
        
        let verticalStack = UIStackView()
        verticalStack.axis = .vertical
        
        let characterLabel = TLALabel()
        verticalStack.addArrangedSubview(characterLabel)
        characterLabel.text = data.title
        characterLabel.theme = TLATheme.Characters.Cell.Main()
        
        if let title = data.title,
            let alt = data.altTitle {
            characterLabel.text = "\(title) / \(alt)"
        }
        
        let characterNameLabel = TLALabel()
        verticalStack.addArrangedSubview(characterNameLabel)
        characterNameLabel.text = data.subtitle
        characterNameLabel.theme = TLATheme.Characters.Cell.Name()
        addSubview(verticalStack)
        
        let padding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        verticalStack.pinTo(self, padding: padding)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
