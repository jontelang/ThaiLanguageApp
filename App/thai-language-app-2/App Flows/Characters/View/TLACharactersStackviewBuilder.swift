//
//  TLACharactersStackviewBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/13/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACharactersStackviewBuilder {

    static func buildView(displayRows: [DisplayRow]) -> UIStackView {
        let stackview = UIStackView()
        stackview.alignment = .center
        stackview.axis = .vertical
        stackview.spacing = 1
        
        for row in displayRows {
            let hStack = UIStackView()
            hStack.distribution = .fillEqually
            hStack.spacing = 1
            stackview.addArrangedSubview(hStack)
            hStack.pinXAxisTo(stackview)
            
            // The height is an optional variable so that if we don't specify it,
            // the height of the stack will be based on the automatic height from
            // the content (means it needs an intrinsic content size)
            if let height = row.height {
                hStack.pinHeight(height)
            }
            
            for item in row.items {
                switch item.type {
                case .consonant:
                    fallthrough
                case .vowel:
                    let label = CharacterLabel(with: item)
                    label.theme = TLATheme.Characters.Cell.CharacterView() 
                    hStack.addArrangedSubview(label)
                case .spacer:
                    fallthrough
                case .filler:
                    hStack.addArrangedSubview(UIView())
                case .title:
                    let label = TLALabel()
                    hStack.addArrangedSubview(label)
                    label.text = item.title
                    label.theme = TLATheme.Characters.Cell.Title()
                case .subtitle:
                    let label = TLALabel()
                    label.text = item.title
                    label.theme = TLATheme.Characters.Cell.Subtitle()
                    hStack.addArrangedSubview(label)
                }
            }
        }
        
        return stackview
    }
    
}
