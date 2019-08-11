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
        let consonantsArr = consonantStore.getModelEntries(fileName: "TLACharacterModelStoreDataConsonants")
        
        // To avoid relying on the json order, we transform the array into a dictionary
        let consonants = consonantsArr.reduce(into: [String: TLACharacter]()) { (dict, char) in
            dict[char.identifier] = char
        }
        
        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Consonants")
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["KO_KAI"]!),
                TLACharacterDisplay(character: consonants["KHO_KHAI"]!),
                TLACharacterDisplay(character: consonants["KHO_KHUAT"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["KHO_KHWAI"]!),
                TLACharacterDisplay(character: consonants["KHO_KHON"]!),
                TLACharacterDisplay(character: consonants["KHO_RA_KHANG"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["NGO_NGU"]!),
                TLACharacterDisplay(character: consonants["CHO_CHAN"]!),
                TLACharacterDisplay(character: consonants["CHO_CHING"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["CHO_CHANG"]!),
                TLACharacterDisplay(character: consonants["SO_SO"]!),
                TLACharacterDisplay(character: consonants["CHO_CHOE"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["YO_YING"]!),
                TLACharacterDisplay(character: consonants["DO_CHA_DA"]!),
                TLACharacterDisplay(character: consonants["TO_PA_TAK"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["THO_THAN"]!),
                TLACharacterDisplay(character: consonants["THO_MONTHO"]!),
                TLACharacterDisplay(character: consonants["THO_PHU_THAO"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["NO_NEN"]!),
                TLACharacterDisplay(character: consonants["DO_DEK"]!),
                TLACharacterDisplay(character: consonants["TO_TAO"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["THO_THUNG"]!),
                TLACharacterDisplay(character: consonants["THO_THAHAN"]!),
                TLACharacterDisplay(character: consonants["THO_THONG"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["NO_NU"]!),
                TLACharacterDisplay(character: consonants["BO_BAIMAI"]!),
                TLACharacterDisplay(character: consonants["PO_PLA"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["PHO_PHUENG"]!),
                TLACharacterDisplay(character: consonants["FO_FA"]!),
                TLACharacterDisplay(character: consonants["PHO_PHAN"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["FO_FAN"]!),
                TLACharacterDisplay(character: consonants["PHO_SAM_PHAO"]!),
                TLACharacterDisplay(character: consonants["MO_MA"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["YO_YAK"]!),
                TLACharacterDisplay(character: consonants["RO_RUEA"]!),
                TLACharacterDisplay(character: consonants["LO_LING"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["WO_WAEN"]!),
                TLACharacterDisplay(character: consonants["SO_SALA"]!),
                TLACharacterDisplay(character: consonants["SO_RUE_SI"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["SO_SUEA"]!),
                TLACharacterDisplay(character: consonants["HO_HIP"]!),
                TLACharacterDisplay(character: consonants["LO_CHU_LA"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: consonants["O_ANG"]!),
                TLACharacterDisplay(character: consonants["HO_NOK_HUK"]!),
                TLAFillerDisplay(),
                ])
        ]
    }
    
    private static func buildVowelRows() -> [TLADisplayRow] {
        // In this specific dataset we have ALL vowels, each character per row
        // however we don't want to display the 'alternative characters' in their
        // own place, so we need to filter them out right here.
        let vowelStore = TLAModelEntryStore<TLACharacter>.init()
        let vowelsArr = vowelStore.getModelEntries(fileName: "TLACharacterModelStoreDataVowels").filter { char in
            if let type = char.vowelType, type == "alternative_character" {
                return false
            }
            return true
        }
        // To avoid relying on the json order, we transform the array into a dictionary
        let vowels = vowelsArr.reduce(into: [String: TLACharacter]()) { (dict, char) in
            dict[char.identifier] = char
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
                // Unfortunately we have to force unwrap it, but since the data is
                // kind of static, it is fine for this area. Although it does bring
                // in the question wether we need the array->dict conversion to
                // begin with? (One answer could be code readability).
                TLACharacterDisplay(character: vowels["SARA_A"]!),
                TLACharacterDisplay(character: vowels["SARA_AA"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_I"]!),
                TLACharacterDisplay(character: vowels["SARA_II"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_UE"]!),
                TLACharacterDisplay(character: vowels["SARA_UUE"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_U"]!),
                TLACharacterDisplay(character: vowels["SARA_UU"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_EH"]!),
                TLACharacterDisplay(character: vowels["SARA_EEH"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_AE"]!),
                TLACharacterDisplay(character: vowels["SARA_AAE"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_O"]!),
                TLACharacterDisplay(character: vowels["SARA_OO"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_AW"]!),
                TLACharacterDisplay(character: vowels["SARA_AAW"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_ER"]!),
                TLACharacterDisplay(character: vowels["SARA_EER"]!),
                ]),
            
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Special"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Sound length varies"),
                ]),
            
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_AI_MAI_MUAN"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_AI_MAI_MALAI"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_AO"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_AM"]!),
            ]),
            
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Dipthongs"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Short"),
                TLASubtitleDisplay(text: "Long"),
                ]),

            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_IA"]!),
                TLACharacterDisplay(character: vowels["SARA_IIA"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_UEA"]!),
                TLACharacterDisplay(character: vowels["SARA_UUEA"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: vowels["SARA_OA"]!),
                TLACharacterDisplay(character: vowels["SARA_OOA"]!),
                ]),
        ]
    }
    
    private static func buildToneMarksRows() -> [TLADisplayRow] {
        let toneMarksStore = TLAModelEntryStore<TLACharacter>.init()
        let toneMarksArr = toneMarksStore.getModelEntries(fileName: "TLACharacterModelStoreDataTonemarks")
        
        // To avoid relying on the json order, we transform the array into a dictionary
        let toneMarks = toneMarksArr.reduce(into: [String: TLACharacter]()) { (dict, char) in
            dict[char.identifier] = char
        }
        
        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Tone markers"),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: toneMarks["MAI_EK"]!),
                TLACharacterDisplay(character: toneMarks["MAI_THO"]!),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: toneMarks["MAI_TRI"]!),
                TLACharacterDisplay(character: toneMarks["MAI_CHATTAWA"]!),
                ])
        ]
    }
}
