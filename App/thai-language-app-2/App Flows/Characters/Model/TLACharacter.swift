//
//  TLACharacter.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

/// A data structure representing a single thai character or a cluster of them
/// such as certain vowels, consonant clusters and so on.
struct TLACharacter {
    var thaiCharacter: String
    var thaiNameInEnglish: String
    var alternativeThaiCharacter: String?
    
    init(_ character: String, name: String, alt: String? = nil) {
        self.thaiCharacter = character
        self.thaiNameInEnglish = name
        self.alternativeThaiCharacter = alt
    }
}
