//
//  TLATableViewCellEntry.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/24/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import Foundation

/// An entry is essentially a row in a TLATableView. It contains the data to set
/// a cell up with paired with the class of the cell itself.
struct TLATableViewCellEntry {
    
    let cellClass: TLATableViewCell.Type
    
    /// The cell data will be sent to each cell when the cell is created or
    /// dequeued but the UITableViewDataSource method `cellForRow`.
    let cellData: Any?
    
    /// If this tuple is populated, selecting a cell (through the UITableViewDelegate
    /// method `didSelectRow` will perform the Selector `selector` on the target
    /// class `target` _if_ it can perform it. And if both are not nil.
    let cellSelectedData: (target: AnyObject, selector: Selector)?
    
}

// Creating an extension like this allows me to keep the default init method
// but also specify my own smaller init method. Got the tip from:
// https://github.com/johnsundell/swifttips#79-struct-convenience-initializers
extension TLATableViewCellEntry {

    init(cellClass: TLATableViewCell.Type, cellData: Any?) {
        self.init(cellClass: cellClass,
                  cellData: cellData,
                  cellSelectedData: nil)
    }
    
}
