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
        var sections = [TLADisplayRow]()
        sections += buildHeader(character)
        sections += buildContent(character)
        return sections
    }
    
    private static func buildHeader(_ character: TLACharacter) -> [TLADisplayRow] {
        return [TLADisplayRow(height: 50, items: [
            TLATitleDisplay(text: character.thaiCharacter)
            ])]
    }
    
    private static func buildContent(_ character: TLACharacter) -> [TLADisplayRow] {
        var rows: [TLADisplayRow] = []
        
        let characterTitle = "Character"
        rows.append(TLADisplayRow(showsSeparator: true, items: [
            TLACharacterPropertyDisplay(propertyName: characterTitle, propertyValue: character.thaiCharacter)])
        )
        
        let typeTitle = "Character"
        rows.append(TLADisplayRow(showsSeparator: true, items: [
            TLACharacterPropertyDisplay(propertyName: typeTitle, propertyValue: character.type.rawValue)])
        )
        
        let thaiNameInEnglishTitle = "Thai name in english"
        rows.append(TLADisplayRow(showsSeparator: true, items: [
            TLACharacterPropertyDisplay(propertyName: thaiNameInEnglishTitle, propertyValue: character.thaiNameInEnglish)])
        )
        
        if let altCharacter = character.alternativeThaiCharacter {
            let altCharacterTitle = "Alternative character"
            rows.append(TLADisplayRow(showsSeparator: true, items: [
                TLACharacterPropertyDisplay(propertyName: altCharacterTitle, propertyValue: altCharacter)])
            )
        }
        
        return rows
    }
}
