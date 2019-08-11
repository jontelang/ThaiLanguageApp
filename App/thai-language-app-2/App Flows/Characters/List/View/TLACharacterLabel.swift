//
//  TLACharacterLabel.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/13/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACharacterDisplayLabel: TLAView {
    var characterLabel: TLALabel
    var characterNameLabel: TLALabel
    
    init(with data: TLACharacter) {
        characterLabel = TLALabel()
        characterLabel.theme = TLATheme.Characters.List.Character.ThaiCharacter()
        
        if let alt = data.alternativeThaiCharacter {
            characterLabel.text = "\(data.thaiCharacter) / \(alt)"
        } else {
            characterLabel.text = data.thaiCharacter
        }
        
        characterNameLabel = TLALabel()
        characterNameLabel.text = data.thaiNameInEnglish
        characterNameLabel.theme = TLATheme.Characters.List.Character.Name()
        
        super.init(frame: .zero)
        addSubview(characterLabel)
        addSubview(characterNameLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Performance
    
    // We do the layout manually as this view is used in stackview where it
    // caused noticable performance issues when using autolayout. Before I had
    //   Both labels inside stackview - super slow
    //   Both labels only with autolayout - around 25% faster but still slow
    //   Current manual approach - no issues at all, unless adding 100s of views
    override func layoutSubviews() {
        super.layoutSubviews()
        let half = bounds.height / 2.0
        characterLabel.frame = CGRect(x: 0,
                                      y: 12,
                                      width: bounds.width,
                                      height: half)
        characterNameLabel.frame = CGRect(x: 0,
                                          y: half,
                                          width: bounds.width,
                                          height: half - 10)
    }
    
    override var intrinsicContentSize: CGSize {
        let int0 = characterLabel.intrinsicContentSize
        let int1 = characterLabel.intrinsicContentSize
        return CGSize(width: int0.width + int1.width,
                      height: int0.height + int1.height)
    }
}
