//
//  TLAMenuLabelEntryCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAMenuLabelEntryCell: TLATableViewCell {

    @IBOutlet weak var labelTitle: TLALabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        labelTitle.theme = TLATheme.Menu.Label.Entry()
    }
    
    override func configureCell(data: Any?) {
        let title = data as? String
        labelTitle.text = title
    }
    
}
