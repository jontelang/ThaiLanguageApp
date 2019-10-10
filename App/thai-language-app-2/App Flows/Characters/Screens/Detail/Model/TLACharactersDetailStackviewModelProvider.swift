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
        
        rows += buildRow(text: "Character",
                         subtitle: character.thaiCharacter,
                         identifier: "CHARACTER")
        
        rows += buildRow(text: "Name (in english, transliterated)",
                         subtitle: character.thaiNameInEnglish,
                         identifier: "NAME_IN_ENGLISH")
        
        rows += buildRow(text: "Name (in thai)",
                         subtitle: character.thaiNameInThai,
                         identifier: "NAME_IN_THAI")
        
        if let meaningEnglish = character.nameMeaningEnglish, let meaningThai = character.nameMeaningThai {
            rows += buildRow(text: "Meaning of name",
                             subtitle: "\(meaningEnglish) / \(meaningThai)",
                             identifier: "THAI_NAME_MEANING")
        }
        
        rows += buildRow(text: "Alternative character",
                         subtitle: character.alternativeThaiCharacter,
                         identifier: "ALT_CHARACTER")
        
        if let start = character.soundStart, let end = character.soundEnd {
            rows += buildRow(text: "Pronounciation at start / at end",
                             subtitle: start + " / " + end,
                             identifier: "SOUNDS")
        }
        
        rows += buildRow(text: "Pronounciation",
                         subtitle: character.pronounciation,
                         identifier: "PRONOUNCIATION")
        
        rows += buildRow(text: "Pronounciation comment",
                         subtitle: character.pronounciationComment,
                         identifier: "PRONOUNCIATION_COMMENT")
        
        rows += buildRow(text: "Class",
                         subtitle: character.toneClass,
                         identifier: "CLASS")
        
        rows += buildRow(text: "Pthong",
                         subtitle: character.pthong,
                         identifier: "PTHONG")
        
        return rows
    }
    
    private static func buildRow(text: String, subtitle: String?, identifier: String) -> [TLADisplayRow] {
        if let subtitle = subtitle {
            return [TLADisplayRow(showsSeparator: true, items: [
                TLACharacterPropertyDisplay(propertyName: text,
                                            propertyValue: subtitle,
                                            propertyIdentifier: identifier)])
            ]
        }
        return [] // Add nothing
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
