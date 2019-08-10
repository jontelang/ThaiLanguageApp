//
//  TLACharactersStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

//
// TODO: This is kind of a model but also a view related code.. how to split? need a split?
//

class TLACharactersStackviewModelProvider {
    
    static func rows() -> [TLADisplayRow] {
        
        var section = [TLADisplayRow]()
        
        section += buildConsonantRows()
        section += [TLADisplayRow(height: 40, items: [TLAFillerDisplay()])]
        section += buildVowelRows()
        section += [TLADisplayRow(height: 40, items: [TLAFillerDisplay()])]        
        section += buildToneMarksRows()
        section += [TLADisplayRow(height: 40, items: [TLAFillerDisplay()])]
        
        return section
    }
    
    private static func buildConsonantRows() -> [TLADisplayRow] {
        let consonantStore = TLAModelEntryStore<TLACharacter>.init()
        let consonants = consonantStore.getModelEntries(fileName: "TLACharacterModelStoreDataConsonants")
        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Consonants")
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[0]),
                TLACharacterDisplay(character: consonants[1]),
                TLACharacterDisplay(character: consonants[2]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[3]),
                TLACharacterDisplay(character: consonants[4]),
                TLACharacterDisplay(character: consonants[5]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[6]),
                TLACharacterDisplay(character: consonants[7]),
                TLACharacterDisplay(character: consonants[8]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[9]),
                TLACharacterDisplay(character: consonants[10]),
                TLACharacterDisplay(character: consonants[11]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[12]),
                TLACharacterDisplay(character: consonants[13]),
                TLACharacterDisplay(character: consonants[14]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[15]),
                TLACharacterDisplay(character: consonants[16]),
                TLACharacterDisplay(character: consonants[17]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[18]),
                TLACharacterDisplay(character: consonants[19]),
                TLACharacterDisplay(character: consonants[20]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[21]),
                TLACharacterDisplay(character: consonants[22]),
                TLACharacterDisplay(character: consonants[23]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[24]),
                TLACharacterDisplay(character: consonants[25]),
                TLACharacterDisplay(character: consonants[26]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[27]),
                TLACharacterDisplay(character: consonants[28]),
                TLACharacterDisplay(character: consonants[29]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[30]),
                TLACharacterDisplay(character: consonants[31]),
                TLACharacterDisplay(character: consonants[32]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[33]),
                TLACharacterDisplay(character: consonants[34]),
                TLACharacterDisplay(character: consonants[35]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[36]),
                TLACharacterDisplay(character: consonants[37]),
                TLACharacterDisplay(character: consonants[38]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[39]),
                TLACharacterDisplay(character: consonants[40]),
                TLACharacterDisplay(character: consonants[41]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants[42]),
                TLACharacterDisplay(character: consonants[43]),
                TLAFillerDisplay(),
                ])
        ]
    }
    
    private static func buildVowelRows() -> [TLADisplayRow] {
        // In this specific dataset we have ALL vowels, each character per row
        // however we don't want to display the 'alternative characters' in their
        // own place, so we need to filter them out right here.
        let vowelStore = TLAModelEntryStore<TLACharacter>.init()
        let vowels = vowelStore.getModelEntries(fileName: "TLACharacterModelStoreDataVowels").filter { char in
            if let type = char.vowelType, type == "alternative_character" {
                return false
            }
            return true
        }
        
        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Vowels"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Monopthongs"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Short"),
                TLASubtitleDisplay(text: "Long"),
                ]),
            
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[0]),
                TLACharacterDisplay(character: vowels[1]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[2]),
                TLACharacterDisplay(character: vowels[3]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[4]),
                TLACharacterDisplay(character: vowels[5]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[6]),
                TLACharacterDisplay(character: vowels[7]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[8]),
                TLACharacterDisplay(character: vowels[9]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[10]),
                TLACharacterDisplay(character: vowels[11]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[12]),
                TLACharacterDisplay(character: vowels[13]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[14]),
                TLACharacterDisplay(character: vowels[15]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[16]),
                TLACharacterDisplay(character: vowels[17]),
                ]),
            
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Special"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Sound length varies"),
                ]),
            
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[18]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[19]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[20]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[21]),
            ]),
            
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Dipthongs"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Short"),
                TLASubtitleDisplay(text: "Long"),
                ]),

            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[22]),
                TLACharacterDisplay(character: vowels[23]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[24]),
                TLACharacterDisplay(character: vowels[25]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels[26]),
                TLACharacterDisplay(character: vowels[27]),
                ]),
        ]
    }
    
    private static func buildToneMarksRows() -> [TLADisplayRow] {
        let toneMarksStore = TLAModelEntryStore<TLACharacter>.init()
        let toneMarks = toneMarksStore.getModelEntries(fileName: "TLACharacterModelStoreDataTonemarks")

        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Tone markers"),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: toneMarks[0]),
                TLACharacterDisplay(character: toneMarks[1]),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: toneMarks[2]),
                TLACharacterDisplay(character: toneMarks[3]),
                ])
        ]
    }
}
