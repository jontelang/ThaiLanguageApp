//
//  TLAMenuUsageCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

struct TLAMenuUsageCellEntry {
    // TODO: Move to own class and actually implement
}

class TLAMenuUsageCell: TLATableViewCell {

    @IBOutlet weak var labelUsage: TLALabel!
    @IBOutlet weak var labelUsageDescription: TLALabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        labelUsage.theme = TLATheme.Menu.Label.Usage()
        labelUsage.text = "10%"
        
        labelUsageDescription.theme = TLATheme.Menu.Label.UsageDescription()
        labelUsageDescription.text = "The percentage of all app content you have finished so far"
    }
    
    override func configureCell(data: Any?) {
        // TODO: Actually implement
    }
    
}
