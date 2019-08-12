//
//  TLACharacter+Debug.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/12/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

/// Purpose: Convenience initialisers
extension TLACharacter {
    init() {
        identifier = "character_identifier"
        thaiCharacter = "ก"
        thaiNameInEnglish = "Ko Kai"
        thaiNameInThai = "ก ไก่"
        alternativeThaiCharacter = "alt ก"
        type = .consonant
        characterHeight = .normal
        toneClass = "mid"
        pronounciation = "gaw gai"
        pronounciationComment = "this is just a test class"
        soundStart = "g-"
        soundEnd = "-k"
        vowelType = "not a vowel"
        pthong = "diphthong"
    }
}
