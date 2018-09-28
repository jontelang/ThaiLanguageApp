//
//  TLATableViewCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/24/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// This class provides a catch all interface for setting a cell up and should
/// not be used on its own
class TLATableViewCell: UITableViewCell {

    func configureCell(data: Any?) {
        fatalError("Override setupCell(data) in all TLATableViewCell subclasses")
    }
    
}
