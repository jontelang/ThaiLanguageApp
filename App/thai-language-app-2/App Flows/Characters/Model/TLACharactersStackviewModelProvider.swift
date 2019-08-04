//
//  TLACharactersStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

class TLACharactersStackviewModelProvider {
    
    static func rows() -> [TLADisplayRow] {
        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Consonants")
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ก", name: "ko kai", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ข", name: "kho khai", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฃ", name: "kho khuat", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ค", name: "kho khwai", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฅ", name: "kho khon", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฆ", name: "kho ra khang", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ง", name: "ngo ngu", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("จ", name: "cho chan", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฉ", name: "cho ching", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ช", name: "cho chang", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ซ", name: "so so", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฌ", name: "cho choe", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ญ", name: "yo ying", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฎ", name: "do cha da", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฏ", name: "to pa tak", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ฐ", name: "tho than", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฑ", name: "tho montho", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฒ", name: "tho phu-thao", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ณ", name: "no nen", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ด", name: "do dek", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ต", name: "to tao", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ถ", name: "tho thung", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ท", name: "tho thahan", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ธ", name: "tho thong", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("น", name: "no nu", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("บ", name: "bo baimai", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ป", name: "po pla", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ผ", name: "pho phung", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฝ", name: "fo fa", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("พ", name: "pho phan", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ฟ", name: "fo fan", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ภ", name: "pho sam-phao", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ม", name: "mo ma", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ย", name: "yo yak", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ร", name: "ro ruea", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ล", name: "lo ling", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ว", name: "wo waen", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ศ", name: "so sala", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ษ", name: "so rue-si", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ส", name: "so suea", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ห", name: "ho hip", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฬ", name: "lo chu-la", type: .consonant)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("อ", name: "o ang", type: .consonant)),
                TLACharacterDisplay(character: TLACharacter("ฮ", name: "ho nok-huk", type: .consonant)),
                TLAFillerDisplay(),
                ]),
            TLADisplayRow(height: 40, items: [
                TLAFillerDisplay()
                ]),
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
                TLACharacterDisplay(character: TLACharacter("◌ะ", name: "sara a", alt: "◌ั◌", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("◌า", name: "sara aa", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("◌ิ", name: "i", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("◌ี", name: "ee", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("◌ึ", name: "eu", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("◌ือ", name: "euu", alt: "◌ื◌", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("◌ุ", name: "u", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("◌ุ", name: "uu", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("เ◌ะ", name: "e.", alt: "เ◌็◌", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("เ◌", name: "ee", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("แ◌ะ", name: "ae.", alt: "แ◌็◌", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("แ◌", name: "aee", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("โ◌ะ", name: "oh", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("โ◌", name: "ooh", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("เ◌าะ", name: "oh.", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("◌อ", name: "aaw", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("เ◌อะ", name: "uh", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("เ◌อ", name: "uuhr", alt: "เ◌ิ", type: .vowel)),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Special"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Sound length varies"),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ใ◌", name: "ai", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ไ◌", name: "ai", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("เ◌า", name: "ao", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter(" ำ ",name: "am", type: .vowel)),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Dipthongs"),
                ]),
            TLADisplayRow(height: 30, items: [
                TLASubtitleDisplay(text: "Short"),
                TLASubtitleDisplay(text: "Long"),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("เ◌ียะ", name: "ia.", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("เ◌ีย", name: "iia", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("เ◌ือะ", name: "eua.", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("เ◌ือ", name: "euua", type: .vowel)),
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("วัะ", name: "ua.", type: .vowel)),
                TLACharacterDisplay(character: TLACharacter("◌ัว", name: "uua", alt: "◌ว◌", type: .vowel)),
                ])
        ]
    }
    
}
