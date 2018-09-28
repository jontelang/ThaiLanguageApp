//
//  TLATableView.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/23/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// This is a simple subclass to set a lot of default values, mainly it
/// turns on automatic height of UITableViewCells
class TLATableView: UITableView {

    override func awakeFromNib() {
        super.awakeFromNib()
        estimatedRowHeight = 100.0
        rowHeight = UITableViewAutomaticDimension
        separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
