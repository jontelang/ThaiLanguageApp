//
//  TLACharactersStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

class TLACharactersStackviewModelProvider {
    
    static func buildRows() -> [TLADisplayRow] {
        return [
            TLADisplayRow(height: 50, items: [
                TLATitleDisplay(text: "Consonants")
                ]),
            TLADisplayRow(items: [
                TLACharacterDisplay(character: TLACharacter("ก", name: "ko kai")),
//                TLACharacterDisplay(character: TLACharacter("ข", name: "kho khai")),
//                TLACharacterDisplay(character: TLACharacter("ฃ", name: "kho khuat")),
                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ค", name: "kho khwai")),
//                TLACharacterDisplay(character: TLACharacter("ฅ", name: "kho khon")),
//                TLACharacterDisplay(character: TLACharacter("ฆ", name: "kho ra khang")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ง", name: "ngo ngu")),
//                TLACharacterDisplay(character: TLACharacter("จ", name: "cho chan")),
//                TLACharacterDisplay(character: TLACharacter("ฉ", name: "cho ching")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ช", name: "cho chang")),
//                TLACharacterDisplay(character: TLACharacter("ซ", name: "so so")),
//                TLACharacterDisplay(character: TLACharacter("ฌ", name: "cho choe")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ญ", name: "yo ying")),
//                TLACharacterDisplay(character: TLACharacter("ฎ", name: "do cha da")),
//                TLACharacterDisplay(character: TLACharacter("ฏ", name: "to pa tak")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ฐ", name: "tho than")),
//                TLACharacterDisplay(character: TLACharacter("ฑ", name: "tho montho")),
//                TLACharacterDisplay(character: TLACharacter("ฒ", name: "tho phu-thao")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ณ", name: "no nen")),
//                TLACharacterDisplay(character: TLACharacter("ด", name: "do dek")),
//                TLACharacterDisplay(character: TLACharacter("ต", name: "to tao")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ถ", name: "tho thung")),
//                TLACharacterDisplay(character: TLACharacter("ท", name: "tho thahan")),
//                TLACharacterDisplay(character: TLACharacter("ธ", name: "tho thong")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("น", name: "no nu")),
//                TLACharacterDisplay(character: TLACharacter("บ", name: "bo baimai")),
//                TLACharacterDisplay(character: TLACharacter("ป", name: "po pla")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ผ", name: "pho phung")),
//                TLACharacterDisplay(character: TLACharacter("ฝ", name: "fo fa")),
//                TLACharacterDisplay(character: TLACharacter("พ", name: "pho phan")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ฟ", name: "fo fan")),
//                TLACharacterDisplay(character: TLACharacter("ภ", name: "pho sam-phao")),
//                TLACharacterDisplay(character: TLACharacter("ม", name: "mo ma")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ย", name: "yo yak")),
//                TLACharacterDisplay(character: TLACharacter("ร", name: "ro ruea")),
//                TLACharacterDisplay(character: TLACharacter("ล", name: "lo ling")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ว", name: "wo waen")),
//                TLACharacterDisplay(character: TLACharacter("ศ", name: "so sala")),
//                TLACharacterDisplay(character: TLACharacter("ษ", name: "so rue-si")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ส", name: "so suea")),
//                TLACharacterDisplay(character: TLACharacter("ห", name: "ho hip")),
//                TLACharacterDisplay(character: TLACharacter("ฬ", name: "lo chu-la")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("อ", name: "o ang")),
//                TLACharacterDisplay(character: TLACharacter("ฮ", name: "ho nok-huk")),
//                TLAFillerDisplay(),
//                ]),
//            TLADisplayRow(height: 40, items: [
//                TLAFillerDisplay()
//                ]),
//            TLADisplayRow(height: 50, items: [
//                TLATitleDisplay(text: "Vowels"),
//                ]),
//            TLADisplayRow(height: 30, items: [
//                TLASubtitleDisplay(text: "Monopthongs"),
//                ]),
//            TLADisplayRow(height: 30, items: [
//                TLASubtitleDisplay(text: "Short"),
//                TLASubtitleDisplay(text: "Long"),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("◌ะ", name: "sara a", alt: "◌ั◌")),
//                TLACharacterDisplay(character: TLACharacter("◌า", name: "sara aa")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("◌ิ", name: "i")),
//                TLACharacterDisplay(character: TLACharacter("◌ี", name: "ee")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("◌ึ", name: "eu")),
//                TLACharacterDisplay(character: TLACharacter("◌ือ", name: "euu", alt: "◌ื◌")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("◌ุ", name: "u")),
//                TLACharacterDisplay(character: TLACharacter("◌ุ", name: "uu")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("เ◌ะ", name: "e.", alt: "เ◌็◌")),
//                TLACharacterDisplay(character: TLACharacter("เ◌", name: "ee")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("แ◌ะ", name: "ae.", alt: "แ◌็◌")),
//                TLACharacterDisplay(character: TLACharacter("แ◌", name: "aee")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("โ◌ะ", name: "oh")),
//                TLACharacterDisplay(character: TLACharacter("โ◌", name: "ooh")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("เ◌าะ", name: "oh.")),
//                TLACharacterDisplay(character: TLACharacter("◌อ", name: "aaw")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("เ◌อะ", name: "uh")),
//                TLACharacterDisplay(character: TLACharacter("เ◌อ", name: "uuhr", alt: "เ◌ิ")),
//                ]),
//            TLADisplayRow(height: 30, items: [
//                TLASubtitleDisplay(text: "Special"),
//                ]),
//            TLADisplayRow(height: 30, items: [
//                TLASubtitleDisplay(text: "Sound length varies"),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ใ◌", name: "ai")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("ไ◌", name: "ai")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("เ◌า", name: "ao")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter(" ำ ",name: "am")),
//                ]),
//            TLADisplayRow(height: 30, items: [
//                TLASubtitleDisplay(text: "Dipthongs"),
//                ]),
//            TLADisplayRow(height: 30, items: [
//                TLASubtitleDisplay(text: "Short"),
//                TLASubtitleDisplay(text: "Long"),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("เ◌ียะ", name: "ia.")),
//                TLACharacterDisplay(character: TLACharacter("เ◌ีย", name: "iia")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("เ◌ือะ", name: "eua.")),
//                TLACharacterDisplay(character: TLACharacter("เ◌ือ", name: "euua")),
//                ]),
//            TLADisplayRow(items: [
//                TLACharacterDisplay(character: TLACharacter("วัะ", name: "ua.")),
//                TLACharacterDisplay(character: TLACharacter("◌ัว", name: "uua", alt: "◌ว◌")),
//                ])
        ]
    }
    
}
