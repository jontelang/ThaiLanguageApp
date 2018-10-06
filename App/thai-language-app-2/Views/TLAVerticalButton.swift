//
//  TLAVerticalButton.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/23/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// The purpose of this custom button is to have a vertical icon above the title
class TLAVerticalButton: TLAButton {

    // Modified https://stackoverflow.com/a/26013780/1018554
    override func layoutSubviews() {
        super.layoutSubviews()
        if let imageView = self.imageView, let titleLabel = self.titleLabel {
            let totalHeight = imageView.frame.size.height + titleLabel.frame.size.height
            let maxWidth = max(imageView.frame.size.width, titleLabel.frame.size.width)
            let containerView = UIView.init()
            containerView.frame = CGRect.init(x: 0, y: 0, width: maxWidth, height: totalHeight)
            imageView.frame.origin.y = 0
            imageView.frame.origin.x = (containerView.frame.size.width - imageView.frame.size.width) / 2.0
            titleLabel.frame.origin.x = 0
            titleLabel.frame.origin.y = imageView.frame.height
            containerView.addSubview(imageView)
            containerView.addSubview(titleLabel)
            let center = CGPoint.init(x: self.bounds.size.width / 2.0, y: self.bounds.size.width / 2.0)
            containerView.center = center
            self.addSubview(containerView)
            containerView.isUserInteractionEnabled = false
        }
    }
    
}

