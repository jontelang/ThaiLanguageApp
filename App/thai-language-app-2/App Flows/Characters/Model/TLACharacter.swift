//
//  TLACharacter.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

enum TLACharacterType: String {
    case unknown
    case consonant
    case vowel
    case toneMarker
}

/// A data structure representing a single thai character or a cluster of them
/// such as certain vowels, consonant clusters and so on.
struct TLACharacter {
    var identifier: String
    var thaiCharacter: String
    var thaiNameInEnglish: String
    var alternativeThaiCharacter: String?
    var type: TLACharacterType
    
    // Temporary workaround for all characters (consonants, vowels, tone marks)
    // sharing the same subclass despite having contextual "types" like in this
    // case. Could be solved by either having a generic "specificType" or using
    // different base classes per type of character. Like TLAConsonantCharacter.
    var vowelType: String?
    
    init(identifier: String,
         character: String,
         name: String,
         alt: String? = nil,
         type: TLACharacterType = .unknown) {
        self.identifier = identifier
        self.thaiCharacter = character
        self.thaiNameInEnglish = name
        self.alternativeThaiCharacter = alt
        self.type = type
    }
}

// We conform these to Decodable so that they are able to be used by a
// TLAModelEntryStore<T> which loads a json and returns a <T>
extension TLACharacter: Decodable {}
extension TLACharacterType: Decodable {}
