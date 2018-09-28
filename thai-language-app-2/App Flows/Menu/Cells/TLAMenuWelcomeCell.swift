//
//  TLAMenuWelcomeCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAMenuWelcomeCell: TLATableViewCell {

    @IBOutlet weak var labelTitle: TLALabel!
    @IBOutlet weak var labelSubtitle: TLALabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        labelTitle.theme = TLATheme.Menu.Label.WelcomeTitle()
        labelTitle.text = "Welcome to thai teacher app!"
        
        labelSubtitle.theme = TLATheme.Menu.Label.WelcomeSubtitle()
        labelSubtitle.text = "Would you like an overview?"
    }
    
    override func configureCell(data: Any?) {
        // This cell doesn't need any overridden func
    }
    
}
