//
//  TLACharactersDetailStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/4/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

//
// TODO: This is kind of a model but also a view related code.. how to split? need a split?
//

final class TLACharactersDetailStackviewModelProvider {
    
    static func rows(for character: TLACharacter) -> [TLADisplayRow] {
        return buildHeader(character) + buildContent(character)
    }
    
    private static func buildHeader(_ character: TLACharacter) -> [TLADisplayRow] {
        return [TLADisplayRow(height: 50, items: [
            TLATitleDisplay(text: character.thaiCharacter)
            ])]
    }
    
    private static func buildContent(_ character: TLACharacter) -> [TLADisplayRow] {
        var rows: [TLADisplayRow] = []
        
        let characterTitle = "Character"
        rows.append(TLADisplayRow(items: [
            TLACharacterPropertyDisplay(propertyName: characterTitle, propertyValue: character.thaiCharacter)])
        )
        
        let thaiNameInEnglishTitle = "Thai name in english"
        rows.append(TLADisplayRow(items: [
            TLACharacterPropertyDisplay(propertyName: thaiNameInEnglishTitle, propertyValue: character.thaiNameInEnglish)])
        )
        
        if let altCharacter = character.alternativeThaiCharacter {
            let altCharacterTitle = "Alternative character"
            rows.append(TLADisplayRow(items: [
                TLACharacterPropertyDisplay(propertyName: altCharacterTitle, propertyValue: altCharacter)])
            )
        }
        
        return rows
    }
}
