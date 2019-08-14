//
//  TLAInformationLinkDisplayable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a link in an 'information' view
struct TLAInformationLinkDisplayable {
    var link: String
}

extension TLAInformationLinkDisplayable: TLAStackViewDisplayable {
    func view() -> UIView {
        let label = TLALabel()
        label.text = link
        label.theme = TLATheme.Information.Link.Text()
        
        let view = TLAView()
        view.theme = TLATheme.Information.Link.View()
        
        view.addSubview(label)
        label.pinTo(view, padding: UIEdgeInsets(top: 8, left: 10, bottom: 10, right: 40))
        
        return view
    }
}
