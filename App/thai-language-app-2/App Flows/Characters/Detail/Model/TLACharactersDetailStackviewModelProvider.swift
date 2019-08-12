//
//  TLACharactersDetailStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/4/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation
import UIKit

//
// TODO: This is kind of a model but also a view related code.. how to split? need a split?
//

final class TLACharactersDetailStackviewModelProvider {
    
    static func rows(for character: TLACharacter) -> [TLADisplayRow] {
        var rows: [TLADisplayRow] = []
        
        rows += [buildHeader(character)]
        
        if let toneClass = character.toneClass {
            rows += buildRow(text: "Class", subtitle: toneClass)
        }
        
        rows += buildRow(text: "Name (in english, transliterated)", subtitle: character.thaiNameInEnglish)
        rows += buildRow(text: "Name (in thai)", subtitle: character.thaiNameInThai)
        
        if let altCharacter = character.alternativeThaiCharacter {
            rows += buildRow(text: "Alternative character", subtitle: altCharacter)
        }
        if let start = character.soundStart, let end = character.soundEnd {
            rows += buildRow(text: "Pronounciation at start / at end", subtitle: start + " / " + end)
        }
        if let pronounciation = character.pronounciation {
            rows += buildRow(text: "Pronounciation", subtitle: pronounciation)
        }
        if let pronounciationComment = character.pronounciationComment {
            rows += buildRow(text: "Pronounciation comment", subtitle: pronounciationComment)
        }
        
        return rows
    }
    
    private static func buildRow(text: String, subtitle: String) -> [TLADisplayRow] {
        return [TLADisplayRow(showsSeparator: true, items: [
            TLACharacterPropertyDisplay(propertyName: text, propertyValue: subtitle)])
        ]
    }
    
    private static func buildHeader(_ character: TLACharacter) -> TLADisplayRow {
        // Default cases
        var height: CGFloat = 100.0
        var insets: UIEdgeInsets = .zero
        
        switch character.characterHeight {
            case .tall, .high:
                height = 120.0
                insets = UIEdgeInsets(top: 25, left: 0, bottom: 0, right: 0)
            case .verytall:
                height = 140.0
                insets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
            case .low:
                height = 120.0
                insets = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
            case .normal:
                break
        }
        
        return TLADisplayRow(height: height, items: [
            TLACharactersDetailGiantDisplay(text: character.thaiCharacter,
                                            characterInsets: insets)]
        )
    }
}
