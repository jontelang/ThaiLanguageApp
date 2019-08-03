//
//  TLAStackviewBuilder.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAStackviewBuilder {
    
    static func buildView(displayRows: [TLADisplayRow]) -> UIScrollView {
        let stackview = UIStackView()
        stackview.alignment = .center
        stackview.axis = .vertical
        stackview.spacing = 1
        
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
                    let gesture = UITapGestureRecognizer(target: item, action: #selector(i.tapped))
                    gesture.numberOfTapsRequired = 1
                    view.addGestureRecognizer(gesture)
                    view.isUserInteractionEnabled = true
                    view.backgroundColor = .red
                    print("==\nitem \(item) is conforming to tappable - so we add a gesture \(gesture) to view \(view)")
                } else {
                    print("==\nis NOT conforming to tappable \(item)")
                }
            }
        }
        
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.addSubview(stackview)
        stackview.centerXIn(scrollView, padding: 10.0)
        return scrollView
    }
    
    /// temp
    @objc static func test() {
        print("test")
    }
}
