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
                DisplayData(title: "ก", subtitle: "ko kai", altTitle: nil, type: .consonant),
                DisplayData(title: "ข", subtitle: "kho khai", altTitle: nil, type: .consonant),
                DisplayData(title: "ฃ", subtitle: "kho khuat", altTitle: nil, type: .consonant)
                ]),
            DisplayRow(items: [
                DisplayData(title: "ค", subtitle: "kho khwai", altTitle: nil, type: .consonant),
                DisplayData(title: "ฅ", subtitle: "kho khon", altTitle: nil, type: .consonant),
                DisplayData(title: "ฆ", subtitle: "kho ra khang", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ง", subtitle: "ngo ngu", altTitle: nil, type: .consonant),
                DisplayData(title: "จ", subtitle: "cho chan", altTitle: nil, type: .consonant),
                DisplayData(title: "ฉ", subtitle: "cho ching", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ช", subtitle: "cho chang", altTitle: nil, type: .consonant),
                DisplayData(title: "ซ", subtitle: "so so", altTitle: nil, type: .consonant),
                DisplayData(title: "ฌ", subtitle: "cho choe", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ญ", subtitle: "yo ying", altTitle: nil, type: .consonant),
                DisplayData(title: "ฎ", subtitle: "do cha da", altTitle: nil, type: .consonant),
                DisplayData(title: "ฏ", subtitle: "to pa tak", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ฐ", subtitle: "tho than", altTitle: nil, type: .consonant),
                DisplayData(title: "ฑ", subtitle: "tho montho", altTitle: nil, type: .consonant),
                DisplayData(title: "ฒ", subtitle: "tho phu-thao", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ณ", subtitle: "no nen", altTitle: nil, type: .consonant),
                DisplayData(title: "ด", subtitle: "do dek", altTitle: nil, type: .consonant),
                DisplayData(title: "ต", subtitle: "to tao", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ถ", subtitle: "tho thung", altTitle: nil, type: .consonant),
                DisplayData(title: "ท", subtitle: "tho thahan", altTitle: nil, type: .consonant),
                DisplayData(title: "ธ", subtitle: "tho thong", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "น", subtitle: "no nu", altTitle: nil, type: .consonant),
                DisplayData(title: "บ", subtitle: "bo baimai", altTitle: nil, type: .consonant),
                DisplayData(title: "ป", subtitle: "po pla", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ผ", subtitle: "pho phung", altTitle: nil, type: .consonant),
                DisplayData(title: "ฝ", subtitle: "fo fa", altTitle: nil, type: .consonant),
                DisplayData(title: "พ", subtitle: "pho phan", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ฟ", subtitle: "fo fan", altTitle: nil, type: .consonant),
                DisplayData(title: "ภ", subtitle: "pho sam-phao", altTitle: nil, type: .consonant),
                DisplayData(title: "ม", subtitle: "mo ma", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ย", subtitle: "yo yak", altTitle: nil, type: .consonant),
                DisplayData(title: "ร", subtitle: "ro ruea", altTitle: nil, type: .consonant),
                DisplayData(title: "ล", subtitle: "lo ling", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ว", subtitle: "wo waen", altTitle: nil, type: .consonant),
                DisplayData(title: "ศ", subtitle: "so sala", altTitle: nil, type: .consonant),
                DisplayData(title: "ษ", subtitle: "so rue-si", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "ส", subtitle: "so suea", altTitle: nil, type: .consonant),
                DisplayData(title: "ห", subtitle: "ho hip", altTitle: nil, type: .consonant),
                DisplayData(title: "ฬ", subtitle: "lo chu-la", altTitle: nil, type: .consonant),
                ]),
            DisplayRow(items: [
                DisplayData(title: "อ", subtitle: "o ang", altTitle: nil, type: .consonant),
                DisplayData(title: "ฮ", subtitle: "ho nok-huk", altTitle: nil, type: .consonant),
                DisplayData(title: "ฮ", subtitle: "ho nok-huk", altTitle: nil, type: .filler),
                ]),
            DisplayRow(height: 40, items: [
                DisplayData(type: .spacer)
                ]),
            DisplayRow(height: 50, items: [
                DisplayData(title: "Vowels", type: .title),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Minotphtings", type: .subtitle),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "short", type: .subtitle),
                DisplayData(title: "long", type: .subtitle),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ะ", subtitle: "sara a", altTitle: "◌ั◌", type: .vowel),
                DisplayData(title: "◌า", subtitle: "sara aa", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ิ", subtitle: "i", altTitle: nil, type: .vowel),
                DisplayData(title: "◌ี", subtitle: "ee", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ึ", subtitle: "eu", altTitle: nil, type: .vowel),
                DisplayData(title: "◌ือ", subtitle: "euu", altTitle: "◌ื◌", type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "◌ุ", subtitle: "u", altTitle: nil, type: .vowel),
                DisplayData(title: "◌ุ", subtitle: "uu", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌ะ", subtitle: "e.", altTitle: "เ◌็◌", type: .vowel),
                DisplayData(title: "เ◌", subtitle: "ee", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "แ◌ะ", subtitle: "ae.", altTitle: "แ◌็◌", type: .vowel),
                DisplayData(title: "แ◌", subtitle: "aee", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "โ◌ะ", subtitle: "x", altTitle: nil, type: .vowel),
                DisplayData(title: "โ◌", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌าะ", subtitle: "x", altTitle: nil, type: .vowel),
                DisplayData(title: "◌อ", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌อะ", subtitle: "x", altTitle: nil, type: .vowel),
                DisplayData(title: "เ◌อ", subtitle: "x", altTitle: "เ◌ิ", type: .vowel),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Special", type: .subtitle),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "short", type: .subtitle),
                DisplayData(title: "long", type: .subtitle),
                ]),
            DisplayRow(items: [
                DisplayData(type: .filler),
                DisplayData(title: "ใ◌", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(type: .filler),
                DisplayData(title: "ไ◌", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(type: .filler),
                DisplayData(title: "เ◌า", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(type: .filler),
                DisplayData(title: " ำ ",subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "Dipthings", type: .subtitle),
                ]),
            DisplayRow(height: 30, items: [
                DisplayData(title: "short", type: .subtitle),
                DisplayData(title: "long", type: .subtitle),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌ียะ", subtitle: "x", altTitle: nil, type: .vowel),
                DisplayData(title: "เ◌ีย", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "เ◌ือะ", subtitle: "x", altTitle: nil, type: .vowel),
                DisplayData(title: "เ◌ือ", subtitle: "x", altTitle: nil, type: .vowel),
                ]),
            DisplayRow(items: [
                DisplayData(title: "วัะ", subtitle: "x", altTitle: nil, type: .vowel),
                DisplayData(title: "◌ัว", subtitle: "x", altTitle: "◌ว◌", type: .vowel),
                ])
        ]
    }
    
}
