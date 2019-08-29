//
//  TLAInformationTitleDisplayable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To display a title in an 'information' view
struct TLAInformationTitleDisplayable {
    var title: String
}

extension TLAInformationTitleDisplayable: TLAStackViewDisplayable {
    func view() -> UIView {
        let view = TLAView()
        
        let label = TLALabel()
        label.text = title
        label.theme = TLATheme.Information.Title.Text()
        view.addSubview(label)
        label.pinTo(view, padding: UIEdgeInsetsMake(0, 0, 10, 0))
        
        let border = TLAView() // Make themable?
        view.addSubview(border)
        border.pinBottomTo(view)
        border.pinXAxisTo(view)
        border.pinHeight(2)
        border.theme = TLATheme.Information.Title.Border()
        
        return view
    }
}
