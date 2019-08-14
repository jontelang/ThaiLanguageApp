//
//  TLAInformationStackviewModelProvider.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import Foundation

//
// TODO: This is kind of a model but also a view related code.. how to split? need a split?
//

final class TLAInformationStackviewModelProvider {
    
    static func rows(for identifier: String) -> [TLADisplayRow] {
        // TODO: Make this take the actual entries instead of an identifier so
        // that we can at some point inject it, instead of having this one load
        // the store/files by itself.
        let informationStore = TLAModelEntryStore<TLAInformation>.init()
        let informations = informationStore.getModelEntries(fileName: identifier)
        
        var rows: [TLADisplayRow] = []
        
        for information in informations {
            switch information.type {
            case .title:
                rows += [TLADisplayRow(items: [TLAInformationTitleDisplayable(title: information.text)])]
            case .text:
                rows += [TLADisplayRow(items: [TLAInformationTextDisplayable(text: information.text)])]
            case .link:
                rows += [TLADisplayRow(items: [TLAInformationLinkDisplayable(link: information.text)])]
            }
        }
        
        return rows
    }
    
}
