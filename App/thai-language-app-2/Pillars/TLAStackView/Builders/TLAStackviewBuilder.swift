//
//  TLAStackviewBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: To convert an array of [TLADisplayRows] to actual UIViews, at the
/// same time hooking up tap handlers.
class TLAStackviewBuilder {
    
    static func buildView(displayRows: [TLADisplayRow],
                          tapHandler: TLAStackViewTappableHandler,
                          configuration: TLAStackviewBuilderConfiguration = TLAStackviewBuilderConfiguration()) -> UIScrollView {
        let stackview = TLAStackView()
        stackview.alignment = .center
        stackview.axis = .vertical
        stackview.spacing = configuration.rowSpacing
        stackview.storedRows = displayRows
        
        for row in displayRows {
            let hStack = UIStackView()
            hStack.distribution = .fillEqually
            hStack.spacing = 1
            stackview.addArrangedSubview(hStack)
            hStack.pinXAxisTo(stackview)
            
            // The height is an optional variable so that if we don't specify it,
            // the height of the stack will be based on the automatic height from
            // the content (means it needs an intrinsic content size)
            if let height = row.height {
                hStack.pinHeight(height)
            }
            
            for item in row.items {
                let view = item.view()
                hStack.addArrangedSubview(view)
                
                if let i = item as? TLAStackViewTappable {
                    i.tappableHandler = tapHandler
                    let gesture = UITapGestureRecognizer(target: i, action: #selector(i.tapped))
                    gesture.numberOfTapsRequired = 1
                    view.addGestureRecognizer(gesture)
                    view.isUserInteractionEnabled = true
                }
            }
            
            // TODO: Make this somewhat nicer? Do I even need the TLASeparatorDisplay?
            if row.showsSeparator {
                let separator = TLASeparatorDisplay()
                let view = separator.view()
                stackview.addArrangedSubview(view)
                view.pinXAxisTo(stackview)
            }
        }
        
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.addSubview(stackview)
        stackview.centerXIn(scrollView, insets: configuration.internalPadding)
        return scrollView
    }
    
}
