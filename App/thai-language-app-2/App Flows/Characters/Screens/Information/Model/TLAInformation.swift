//
//  TLAInformation.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

enum TLAInformationType: String, Decodable {
    case title
    case text
    case link
}

/// Purpose: A single point of information, always (?) a part of a larger information
/// collection, such as a paragraph, a title, link etc (see TLAInformationType)
struct TLAInformation: Decodable {
    var type: TLAInformationType
    var text: String // TODO: Change to "content"
}
