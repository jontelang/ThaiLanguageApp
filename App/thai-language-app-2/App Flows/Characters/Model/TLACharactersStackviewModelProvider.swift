//
//  TLACharactersStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

class TLACharactersStackviewModelProvider {
    
    static func buildRows() -> [DisplayRow] {
        return [
            DisplayRow(height: 50, items: [
                DisplayData(title: "Consonants", type: .title)
                ]),
            DisplayRow(items: [
                DisplayData(title: "ก", subtitle: "ko kai", type: .consonant),
                DisplayData(title: "ข", subtitle: "kho khai", type: .consonant),
                DisplayData(title: "ฃ", subtitle: "kho khuat", type: .consonant)
                ]),
            DisplayRow(items: [
                DisplayData(title: "ค", subtitle: "kho khwai", type: .consonant),
                DisplayData(title: "ฅ", subtitle: "kho khon", type: .consonant),
                DisplayData(title: "ฆ", subtitle: "kho ra khang", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ง", subtitle: "ngo ngu", type: .consonant),
                DisplayData(title: "จ", subtitle: "cho chan", type: .consonant),
                DisplayData(title: "ฉ", subtitle: "cho ching", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ช", subtitle: "cho chang", type: .consonant),
                DisplayData(title: "ซ", subtitle: "so so", type: .consonant),
                DisplayData(title: "ฌ", subtitle: "cho choe", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ญ", subtitle: "yo ying", type: .consonant),
                DisplayData(title: "ฎ", subtitle: "do cha da", type: .consonant),
                DisplayData(title: "ฏ", subtitle: "to pa tak", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ฐ", subtitle: "tho than", type: .consonant),
                DisplayData(title: "ฑ", subtitle: "tho montho", type: .consonant),
                DisplayData(title: "ฒ", subtitle: "tho phu-thao", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ณ", subtitle: "no nen", type: .consonant),
                DisplayData(title: "ด", subtitle: "do dek", type: .consonant),
                DisplayData(title: "ต", subtitle: "to tao", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ถ", subtitle: "tho thung", type: .consonant),
                DisplayData(title: "ท", subtitle: "tho thahan", type: .consonant),
                DisplayData(title: "ธ", subtitle: "tho thong", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "น", subtitle: "no nu", type: .consonant),
                DisplayData(title: "บ", subtitle: "bo baimai", type: .consonant),
                DisplayData(title: "ป", subtitle: "po pla", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ผ", subtitle: "pho phung", type: .consonant),
                DisplayData(title: "ฝ", subtitle: "fo fa", type: .consonant),
                DisplayData(title: "พ", subtitle: "pho phan", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ฟ", subtitle: "fo fan", type: .consonant),
                DisplayData(title: "ภ", subtitle: "pho sam-phao", type: .consonant),
                DisplayData(title: "ม", subtitle: "mo ma", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ย", subtitle: "yo yak", type: .consonant),
                DisplayData(title: "ร", subtitle: "ro ruea", type: .consonant),
                DisplayData(title: "ล", subtitle: "lo ling", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ว", subtitle: "wo waen", type: .consonant),
                DisplayData(title: "ศ", subtitle: "so sala", type: .consonant),
                DisplayData(title: "ษ", subtitle: "so rue-si", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ส", subtitle: "so suea", type: .consonant),
                DisplayData(title: "ห", subtitle: "ho hip", type: .consonant),
                DisplayData(title: "ฬ", subtitle: "lo chu-la", type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "อ", subtitle: "o ang", type: .consonant),
                DisplayData(title: "ฮ", subtitle: "ho nok-huk", type: .consonant),
                DisplayData(title: "ฮ", subtitle: "ho nok-huk", type: .filler),
                ]),
            DisplayRow(height: 40, items: [
                DisplayData(type: .spacer)
                ]),
            DisplayRow(height: 50, items: [
                DisplayData(title: "Vowels", type: .title),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Monopthongs", type: .subtitle),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Short", type: .subtitle),
                DisplayData(title: "Long", type: .subtitle),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ะ", subtitle: "sara a", altTitle: "◌ั◌", type: .vowel),
                DisplayData(title: "◌า", subtitle: "sara aa", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ิ", subtitle: "i", type: .vowel),
                DisplayData(title: "◌ี", subtitle: "ee", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ึ", subtitle: "eu", type: .vowel),
                DisplayData(title: "◌ือ", subtitle: "euu", altTitle: "◌ื◌", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ุ", subtitle: "u", type: .vowel),
                DisplayData(title: "◌ุ", subtitle: "uu", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌ะ", subtitle: "e.", altTitle: "เ◌็◌", type: .vowel),
                DisplayData(title: "เ◌", subtitle: "ee", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "แ◌ะ", subtitle: "ae.", altTitle: "แ◌็◌", type: .vowel),
                DisplayData(title: "แ◌", subtitle: "aee", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "โ◌ะ", subtitle: "oh", type: .vowel),
                DisplayData(title: "โ◌", subtitle: "ooh", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌าะ", subtitle: "oh.", type: .vowel),
                DisplayData(title: "◌อ", subtitle: "aaw", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌อะ", subtitle: "uh", type: .vowel),
                DisplayData(title: "เ◌อ", subtitle: "uuhr", altTitle: "เ◌ิ", type: .vowel),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Special", type: .subtitle),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Sound length varies", type: .subtitle),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ใ◌", subtitle: "ai", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ไ◌", subtitle: "ai", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌า", subtitle: "ao", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: " ำ ",subtitle: "am", type: .vowel),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Dipthongs", type: .subtitle),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Short", type: .subtitle),
                DisplayData(title: "Long", type: .subtitle),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌ียะ", subtitle: "ia.", type: .vowel),
                DisplayData(title: "เ◌ีย", subtitle: "iia", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌ือะ", subtitle: "eua.", type: .vowel),
                DisplayData(title: "เ◌ือ", subtitle: "euua", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "วัะ", subtitle: "ua.", type: .vowel),
                DisplayData(title: "◌ัว", subtitle: "uua", altTitle: "◌ว◌", type: .vowel),
                ])
        ]
    }
    
}
